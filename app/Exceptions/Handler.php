<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        //     $this->renderable(function (Throwable $e, $request) {
        //         if ($request->is('api/v1/auth/logout')) {
        //             return response()->json([
        //                 'message' => 'Invalid Token'
        //             ], 401);
        //         }
        //         if ($request->is(['api/v1/consultations', 'api/v1/consultations/*'])) {
        //             return response()->json([
        //                 'message' => 'Unautorizhed User'
        //             ], 401);
        //         }
        //         if ($request->is(['api/v1/spots', 'api/v1/spots/*'])) {
        //             return response()->json([
        //                 'message' => 'Unautorizhed User'
        //             ], 401);
        //         }
        //     });
        //     $this->renderable(function (Throwable $e, $request) {
        //         if ($request->is(['api/v1/vaccinations', 'api/v1/vaccinations/*'])) {
        //             return response()->json([
        //                 'message' => 'Unautorizhed User'
        //             ], 401);
        //         }
        //     });
    }
}
