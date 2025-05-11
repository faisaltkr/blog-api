<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Comment;
use App\Models\Tag;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $tags = Tag::factory()->count(10)->create();

    // Create 10 users
        User::factory()->count(10)->create()->each(function ($user) use ($tags) {
            // Each user has 3 posts
            Post::factory()->count(3)->create([
                'user_id' => $user->id,
            ])->each(function ($post) use ($tags) {
                // Attach random tags to each post
                $post->tags()->attach($tags->random(rand(1, 4))->pluck('id'));

                // Each post gets 5 comments
                Comment::factory()->count(5)->create([
                    'post_id' => $post->id,
                    'user_id' => User::inRandomOrder()->first()->id,
                ]);
            });
        });
    }
}
