<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Validator;

use App\Models\Electeur;

class VerifController extends Controller
{
    //
   public function verification(Request $request){

    $verif = validator::make($request->all(),[
        'id' => 'required | exists:electeurs',

    ]);

    if($verif->fails()){
        return response()->json(['status'=>'false', 'message'=>"Vous ne vous etes pas inscrit verifier si vous ne vous etes tromper si ce n'est pas le cas alors allez vous inscrire "]);
    }
    else{
        $electeur = Electeur::where('id', $request->id)->first();
        if($electeur)
        {
            return response()->json(['status'=>'true', 'message'=>"inscrit", 'data'=>$electeur->prenom]);
        }

    }

    }

}
