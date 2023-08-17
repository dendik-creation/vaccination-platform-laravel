<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Society extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = 'societies';
    protected $guarded = ['id', 'expires_at'];

    public function regional()
    {
        return $this->belongsTo(Regional::class);
    }
}
