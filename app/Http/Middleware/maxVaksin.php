<?php

namespace App\Http\Middleware;

use App\Models\Vaccination;
use Closure;
use Illuminate\Http\Request;

class maxVaksin
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
        $society = Vaccination::where('society_id', auth()->user()->id)->first();
        $vaksin1 = Vaccination::where('society_id', auth()->user()->id)->where('dose', 1)->first();
        $maxVaksin = Vaccination::where('society_id', auth()->user()->id)->where('dose', 2)->first();
        if ($society && $vaksin1 && $maxVaksin) {
            return response()->json([
                'message' => 'Society has been 2x vaccinated'
            ], 401);
        } else {
            return $next($request);
        }
    }
}
