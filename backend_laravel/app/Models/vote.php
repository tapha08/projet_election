<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class vote extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = ['numvote', 'id', 'id_candidat'];

}
