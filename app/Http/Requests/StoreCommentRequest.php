<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCommentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }
    /**
     * Get the user for the request.
     *
     * @return \Illuminate\Contracts\Auth\Authenticatable|null
     */

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        request()->merge(['status' => 'approved']);
        return [    
            'content' => 'required|string|max:255',
            //'post_id' => 'required|exists:posts,id',
            //'user_id' => 'required|exists:users,id',
        ];
    }
}
