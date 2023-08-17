<?php

namespace App\Models;

use App\Models\Medical as ModelsMedical;
use Faker\Provider\Medical;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Consultation extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    public $timestamps = false;

    public function doctor()
    {
        return $this->belongsTo(ModelsMedical::class);
    }

    public function society()
    {
        return $this->belongsTo(Society::class);
    }
}
