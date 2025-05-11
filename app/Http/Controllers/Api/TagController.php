<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use App\Models\Tag;
use Illuminate\Http\Request;
use App\Services\TagService;
use Illuminate\Support\Facades\Log;

class TagController extends Controller
{

    public function __construct(protected TagService $tagService) {}
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json($this->tagService->all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $request->validate(['name' => 'required|string|unique:tags']);
            return response()->json($this->tagService->create($request->only(['name'])));
        } catch (\Throwable $th) {
            Log::error('Tag creation failed: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to create tag'], 500);
        }
       
        
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Tag $tag)
    {
        try {
            $request->validate(['name' => 'required|string|unique:tags,name,' . $tag->id]);
             return response()->json($this->tagService->update($tag, $request->only('name')));
        } catch (\Throwable $th) {
            Log::error('Tag update failed: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to update tag'], 500);
        }
       
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Tag $tag)
    {
        try {
           $this->tagService->delete($tag);
           return response()->json(['message' => 'Tag deleted']);
        } catch (\Throwable $th) {
            Log::error('Tag deletion failed: ' . $th->getMessage());
            return response()->json(['error' => 'Failed to delete tag'], 500);
        }
        
        
    }
}
