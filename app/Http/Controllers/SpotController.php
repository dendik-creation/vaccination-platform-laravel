<?php

namespace App\Http\Controllers;

use App\Models\Spot;
use App\Models\SpotVaccine;
use App\Models\Vaccination;
use Illuminate\Http\Request;

class SpotController extends Controller
{
    public function index()
    {
        $spots = Spot::with('available_vaccines')->where('regional_id', auth()->user()->regional_id)->get();
        return [
            'spots' => $spots
        ];
    }

    public function show($id, Request $request)
    {
        $spot = Spot::where('id', $id)->first();
        $count = Vaccination::where('spot_id', $id)->where('date', $request->date)->count();
        return [
            'date' => date_format(date_create($request->date), 'F d, Y'),
            'spot' => $spot,
            'vaccinations_count' => $count,
        ];
    }
}
