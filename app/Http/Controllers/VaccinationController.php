<?php

namespace App\Http\Controllers;

use App\Models\Spot;
use App\Models\Vaccination;
use Illuminate\Http\Request;

class VaccinationController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'date' => 'required|date_format:Y-m-d',
            'spot_id' => 'required'
        ], [
            'date.date' => 'The date does not match the format Y-m-d.'
        ]);

        $vaksinKe = Vaccination::where('society_id', auth()->user()->id)->first();
        if ($vaksinKe) {
            Vaccination::create([
                'dose' => 2,
                'date' => $request->date,
                'society_id' => auth()->user()->id,
                'spot_id' => $request->spot_id,
                'vaccine_id' => 2,
                'doctor_id' => 2,
                'officer_id' => 2,
            ]);
            return response()->json([
                'message' => 'Second Vaccination Registered Successfull'
            ], 200);
        }
        if (!$vaksinKe) {
            Vaccination::create([
                'dose' => 1,
                'date' => $request->date,
                'society_id' => auth()->user()->id,
                'spot_id' => $request->spot_id,
                'vaccine_id' => 2,
                'doctor_id' => 2,
                'officer_id' => 2,
            ]);
            return response()->json([
                'message' => 'First Vaccination Registered Successfull'
            ], 200);
        }
    }

    public function index()
    {
        $vaksin1 = Vaccination::with('spot', 'vaccine', 'doctor')->where('society_id', auth()->user()->id)->where('dose', 1)->first();
        $vaksin2 = Vaccination::with('spot', 'vaccine', 'doctor')->where('society_id', auth()->user()->id)->where('dose', 2)->first();
        if ($vaksin1 && !$vaksin2) {
            return [
                'vaccinations' => [
                    'first' => [
                        'queue' => $vaksin1->spot->regional->count(),
                        'dose' => $vaksin1->dose,
                        'vaccination_date' => date_format(date_create($vaksin1->date), 'F d, Y'),
                        'spot' => $vaksin1->spot,
                        'status' => 'Done',
                        'vaccine' => $vaksin1->vaccine,
                        'vaccinator' => $vaksin1->doctor
                    ]
                ]
            ];
        }
        if (!$vaksin1 && $vaksin2) {
            return [
                'vaccinations' => [
                    'second' => [
                        'queue' => $vaksin2->spot->regional->count(),
                        'dose' => $vaksin2->dose,
                        'vaccination_date' => date_format(date_create($vaksin2->date), 'F d, Y'),
                        'spot' => $vaksin2->spot,
                        'status' => 'Done',
                        'vaccine' => $vaksin2->vaccine,
                        'vaccinator' => $vaksin2->doctor
                    ]
                ]
            ];
        } else {
            return [
                'vaccinations' => [
                    'first' => [
                        'queue' => $vaksin1->spot->regional->count(),
                        'dose' => $vaksin1->dose,
                        'vaccination_date' => date_format(date_create($vaksin1->date), 'F d, Y'),
                        'spot' => $vaksin1->spot,
                        'status' => 'Done',
                        'vaccine' => $vaksin1->vaccine,
                        'vaccinator' => $vaksin1->doctor
                    ],
                    'second' => [
                        'queue' => $vaksin2->spot->regional->count(),
                        'dose' => $vaksin2->dose,
                        'vaccination_date' => date_format(date_create($vaksin2->date), 'F d, Y'),
                        'spot' => $vaksin2->spot,
                        'status' => 'Done',
                        'vaccine' => $vaksin2->vaccine,
                        'vaccinator' => $vaksin2->doctor
                    ]
                ]
            ];
        }
    }
}
