<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Validation\ValidationException;
use App\Models\User;
use App\Http\Controllers\Controller;

class AuthController extends Controller
{
    // Register a new user
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
            'role' => 'required|in:user,admin',
        ]);

        try {
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'role' => $request->role,
                'status' => 'active',
            ]);

            $token = $user->createToken('authToken')->accessToken;

            return response()->json(['user' => $user, 'token' => $token], 201);
        } catch (\Exception $e) {
            Log::error('Error during registration: ' . $e->getMessage());
            return response()->json(['message' => 'Registration failed'], 500);
        }
    }

    // Login user
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect or not match.'],
            ]);
        }

        $token = $user->createToken('authToken')->accessToken;

        return response()->json(['user' => $user, 'token' => $token], 200);
    }

    // Logout user
    public function logout(Request $request)
    {
        try {
            $request->user()->token()->revoke();
            return response()->json(['message' => 'Successfully logged out'], 200);
        } catch (\Exception $e) {
            Log::error('Error during logout: ' . $e->getMessage());
            return response()->json(['message' => 'Logout failed'], 500);
        }
    }

    // Get authenticated user details
    public function user(Request $request)
    {
        try {
            return response()->json($request->user(), 200);
        } catch (\Exception $e) {
            Log::error('Error fetching user details: ' . $e->getMessage());
            return response()->json(['message' => 'Failed to fetch user details'], 500);
        }
    }
}