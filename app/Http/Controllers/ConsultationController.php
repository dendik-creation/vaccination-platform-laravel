<?php

namespace App\Http\Controllers;

use App\Http\Resources\MyConsultation;
use App\Models\Consultation;
use Illuminate\Http\Request;

class ConsultationController extends Controller
{
    public function store(Request $request)
    {
        Consultation::create([
            'society_id' => auth()->user()->id,
            'doctor_id' => 2,
            'status' => 'pending',
            'disease_history' => $request->disease_history,
            'current_symptoms' => $request->current_symptoms,
        ]);
        return response()->json([
            'message' => 'Request Consultation Sent Sunccessfull'
        ], 200);
    }

    public function show()
    {
        $consultation = Consultation::with('doctor')->where('society_id', auth()->user()->id)->first();
        return new MyConsultation($consultation);
    }
}
