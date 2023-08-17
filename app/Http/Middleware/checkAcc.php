<?php

namespace App\Http\Middleware;

use App\Models\Consultation;
use Closure;
use Illuminate\Http\Request;

class checkAcc
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $status = Consultation::where('society_id', auth()->user()->id)->where('status', 'accepted')->first();
        if (!$status) {
            return response()->json([
                'message' => 'Your consultation must be accepted by doctor before'
            ], 401);
        } else {
            return $next($request);
        }
    }
}
