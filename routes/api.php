<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ConsultationController;
use App\Http\Controllers\SpotController;
use App\Http\Controllers\VaccinationController;
use App\Models\Consultation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::post('v1/auth/login', [AuthController::class, 'login']);

Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::post('v1/auth/logout', [AuthController::class, 'logout']);

    Route::post('v1/consultations', [ConsultationController::class, 'store']);
    Route::get('v1/consultations', [ConsultationController::class, 'show']);

    Route::get('v1/spots', [SpotController::class, 'index']);
    Route::get('v1/spots/{id}', [SpotController::class, 'show']);

    Route::post('v1/vaccinations', [VaccinationController::class, 'store'])->middleware(['maxVaksin', 'before30Days', 'checkAcc']);
    Route::get('v1/vaccinations', [VaccinationController::class, 'index']);
});
