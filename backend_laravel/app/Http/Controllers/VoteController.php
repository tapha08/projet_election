<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\vote;

class VoteController extends Controller
{
    //creer et inserer vote base de données

    public function addVote(Request $request){
        $vote = vote::create(['id'=>request('id'), 'id_candidat'=>request('id_candidat')]);
        return response($vote);
    }

}
