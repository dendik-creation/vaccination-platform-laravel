<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vaccination extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'vaccinations';
    protected $guarded = ['id'];

    public function vaccine()
    {
        return $this->belongsTo(Vaccine::class);
    }
    public function doctor()
    {
        return $this->belongsTo(Medical::class);
    }
    public function spot()
    {
        return $this->belongsTo(Spot::class);
    }
}
