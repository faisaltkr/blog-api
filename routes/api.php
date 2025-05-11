<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\PostController;
use App\Http\Controllers\Api\CommentController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\TagController;

Route::prefix('v1')->group(function () {

    // Authentication routes
    Route::post('register', [AuthController::class, 'register']); // Register a new user
    Route::post('login', [AuthController::class, 'login']); // Login a user and issue a token

    Route::middleware('auth:api')->group(function () {
        // Authenticated user routes
        Route::get('user', [AuthController::class, 'user']); // Get the authenticated user's details
        Route::post('logout', [AuthController::class, 'logout']); // Logout the authenticated user

        // Post routes
        Route::apiResource('posts', PostController::class); // CRUD operations for posts

        // Comment routes
        Route::get('posts/{post}/comments', [CommentController::class, 'index']); // Get all comments for a specific post
        Route::post('posts/{post}/comments', [CommentController::class, 'store']); // Add a comment to a specific post
        Route::put('comments/{comment}', [CommentController::class, 'update']); // Update a specific comment
        Route::delete('comments/{comment}', [CommentController::class, 'destroy']); // Delete a specific comment

        // User routes
        Route::get('users', [UserController::class, 'index']); // Get a list of all users
        Route::get('users/{user}', [UserController::class, 'show']); // Get details of a specific user

        Route::apiResource('tags', TagController::class); // CRUD operations for tags
        Route::post('posts/{post}/tags', [PostController::class, 'addTags']); // Add tags to a specific post
        Route::delete('posts/{post}/tags', [PostController::class, 'removeTags']); // Remove tags from a specific post
    });
});