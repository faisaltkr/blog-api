<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCommentRequest as CommentRequest;
use App\Http\Resources\CommentResource;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Post $post)
    {
        $comments = $post->comments()->with('user')->latest()->paginate(10);
        return CommentResource::collection($comments);
    }
    

    /**
     * Store a newly created resource in storage.
     */
    public function store(CommentRequest $request, Post $post)
    {

        try {
            
            $comment = $request->user()->comments()->create([
                'content' => $request->content,
                'post_id' => $post->id,
            ]);
            
            return new CommentResource($comment);
        } catch (\Exception $e) {
            Log::error('Comment creation failed: ' . $e->getMessage());
            return response()->json(['error' => 'Failed to create comment.'], 500);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Comment $comment)
    {
        return new CommentResource($comment->load('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CommentRequest $request, Comment $comment)
    {
        
        try {
            $comment->update([
                'content' => $request->content,
            ]);

            return new CommentResource($comment);
        } catch (\Exception $e) {
            Log::error('Comment update failed: ' . $e->getMessage());
            return response()->json(['error' => 'Failed to update comment.'], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Comment $comment)
    {
        try {
            $comment->delete();

            return response()->json(['message' => 'Comment deleted successfully.'], 200);
        } catch (\Exception $e) {
            Log::error('Comment deletion failed: ' . $e->getMessage());
            return response()->json(['error' => 'Failed to delete comment.'], 500);
        }
    }
}
