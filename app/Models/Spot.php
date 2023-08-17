<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Spot extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    protected $table = 'spots';

    public function available_vaccines()
    {
        return $this->belongsToMany(Vaccine::class, SpotVaccine::class);
    }

    public function regional()
    {
        return $this->belongsTo(Regional::class);
    }
}
