<?php

namespace App\Http\Controllers;

use App\Models\Society;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'id_card_number' => 'required',
            'password' => 'required',
        ]);

        $society = Society::where('id_card_number', $request->id_card_number)->first();
        if ($society && $society->id_card_number == $request->id_card_number && $society->password == $request->password) {
            $token = $society->createToken($society->id_card_number);
            return [
                'name' => $society->name,
                'born_date' => $society->born_date,
                'gender' => $society->gender,
                'address' => $society->address,
                'token' => $token,
                'regional' => $society->regional
            ];
        } else {
            return response()->json([
                'message' => 'ID Card or Password Incorrect'
            ], 401);
        }
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            "message" => "Logout Success"
        ], 200);
    }
}
