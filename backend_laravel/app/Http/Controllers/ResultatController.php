<?php

namespace App\Http\Controllers;
use App\Models\vote;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ResultatController extends Controller
{
    //
    public function getvote(){
       /* $votes=vote::select('id_candidat', 'prenom', 'nom', count(['votes.id']), 'identification')
        ->join('candidats', 'candidats.id', '=', 'votes.id_candidat')
        ->get();
        return response()->json($votes);*/

        $votes=DB::table('votes')
        ->join('candidats', 'votes.id_candidat', '=', 'candidats.id')
        ->select( 'votes.id_candidat', 'candidats.prenom', 'candidats.nom', 'candidats.nomparti', DB::raw('count(votes.id )as voix'), 'candidats.identification')
        //->join('candidats', 'candidats.id', '=', 'votes.id_candidat')
        ->groupBy('votes.id_candidat')
        ->groupBy('candidats.prenom')
        ->groupBy('candidats.nom')
        ->groupBy('candidats.identification')
        ->groupBy('candidats.nomparti')

        ->orderBy('voix', 'desc')
        ->get();
        return response()->json($votes);
    }
}
