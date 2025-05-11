<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
     protected $fillable = ['title', 'content', 'user_id','image', 'status'];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function comments() {
        return $this->hasMany(Comment::class);
    }

    public function tags() {
        return $this->belongsToMany(Tag::class);
    }

    public function scopePublished($query) {
        return $query->where('status', 'published');
    }

    public function scopeDraft($query) {
        return $query->where('status', 'draft');
    }

    public function scopeArchived($query) {
        return $query->where('status', 'archived');
    }
    public function scopeSearch($query, $search) {
        return $query->where('title', 'like', "%$search%")
                     ->orWhere('content', 'like', "%$search%");
    }
    public function scopeFilterByTag($query, $tag) {
        return $query->whereHas('tags', function($q) use ($tag) {
            $q->where('name', $tag);
        });
    }
}
