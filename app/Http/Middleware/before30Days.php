<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\Vaccination;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class before30Days
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
        $user = Vaccination::where('society_id', auth()->user()->id)->first();

        if ($user) {
            $then = Carbon::parse($user->date);
            $now = Carbon::parse($request->date);
            $selisih = $now->diffInDays($then);

            if ($selisih <= 30) {
                return response()->json([
                    'message' => 'Wait at least +30 days from 1st Vaccination'
                ], 401);
            }
        }

        return $next($request);
    }
}
