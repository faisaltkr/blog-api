<?php
namespace App\Services;

use App\Models\Tag;

class TagService
{
    public function all()
    {
        return Tag::all();
    }

    public function create(array $data)
    {
        return Tag::create($data);
    }

    public function update(Tag $tag, array $data)
    {
        $tag->update($data);
        return $tag;
    }

    public function delete(Tag $tag)
    {
        $tag->delete();
    }
}
