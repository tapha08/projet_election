<?php

namespace App\Http\Controllers;
use App\Models\Candidat;
use Illuminate\Http\Request;

class CandidatController extends Controller
{
    //liste des candidats

    public function getCandidat(){
        $candidats=Candidat::all();
        return response()->json($candidats);
    }


}
