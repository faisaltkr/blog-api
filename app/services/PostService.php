<?php

namespace App\Services;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostService
{
    public function create(Request $request, array $data): Post
    {
        return $request->user()->posts()->create($data);
    }

    public function update(Request $request, Post $post, array $data): Post
    {
        if ($post->user_id !== $request->user()->id) {
            abort(403, 'Unauthorized');
        }

        $post->update($data);
        return $post;
    }

    public function delete(Request $request, Post $post): void
    {
        if ($post->user_id !== $request->user()->id) {
            abort(403, 'Unauthorized');
        }

        $post->delete();
    }
}
