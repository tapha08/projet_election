<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\auth\Authenticatable;
use Illuminate\Auth\Authenticatable as BasicAuthenticatable;
use Laravel\Sanctum\HasApiTokens;

class Electeur extends Model implements Authenticatable
{
    use HasFactory, HasApiTokens, BasicAuthenticatable;
    public $timestamps = false;

    protected $primarykey = 'id';
    protected $fillable = ['id', 'prenom', 'nom', 'email', 'datenaissance', 'commune', 'password', 'password_confirmation'];

}
