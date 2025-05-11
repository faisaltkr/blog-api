<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Resources\PostResource;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostCollection;
use App\Http\Requests\StorePostRequest;
use Illuminate\Support\Facades\Log;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return PostResource::collection(Post::with('user')->latest()->paginate(10));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePostRequest $request)
    {
        
        try {
            $request->merge(['status'=> 'published']);
            $post = $request->user()->posts()->create($request->validated());
            if ($request->has('tags')) {
                $post->tags()->sync($request->tags);
            }
            if ($request->hasFile('image')) {
                $post->image = $request->file('image')->store('images', 'public');
                $post->save();
            }
            return new PostResource($post);
        } catch (\Throwable $th) {
            Log::info('Post creation failed: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to create post'], 500);
        }
        
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        return new PostResource($post->load('user'));
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(StorePostRequest $request, Post $post)
    {
        try {
            $post->update($request->validated());
            if ($request->hasFile('image')) {
                $post->image = $request->file('image')->store('images', 'public');
                $post->save();
            }
            return new PostResource($post);
        } catch (\Throwable $th) {
            Log::info('Post update failed: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to update post'], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        try {
            $post->delete();
            return response()->json(['message' => 'Post deleted successfully'], 200);
        } catch (\Throwable $th) {
            Log::info('Post deletion failed: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to delete post'], 500);
        }
    }
}
