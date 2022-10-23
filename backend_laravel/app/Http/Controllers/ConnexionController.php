<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Electeur;
use Hash;
use Validator;

class ConnexionController extends Controller
{
    //authetification

    public function traitement(Request $request){
        //auth()->attempt(['CNI' => request('CNI'), 'password' => request('password')]);

        $existe = validator::make($request->all(),[
            'id' => 'required | exists:votes',

        ]);
        if($existe->fails()){

            $validators = validator::make($request->all(),[
                'id' => 'required | exists:electeurs',
                'password' => 'required | min:6',
                //'device' => 'required'
            ]);

            if($validators->fails()){
               // $error = $validators->errors()->all()[0];
                return response()->json(['status'=>'false', 'message'=>"incorrect", 'data'=>'faux']);
            }else{
                $electeur = Electeur::where('id', $request->id)->first();
                if($electeur){
                    if(Hash::check($request->password,$electeur->password)){
                        //$electeur->token()->delete();
                        $token = $electeur->createToken('auth_token')->plainTextToken;
                        $electeur->token = $token;
                        return response()->json(['status'=>'true', 'message'=>"connecte", 'data'=>$electeur->id, 'access_token'=>$token]);
                    }else{
                        return response()->json(['status'=>'false', 'message'=>"mot de passe incorrect", 'data'=>'faux']);
                    }
                }else{
                    return response()->json(['status'=>'false', 'message'=>"Le CNI renseigné n'existe pas", 'data'=>'faux']);
                }
            }


        }else{
            $electeur = Electeur::where('id', $request->id)->first();
            if($electeur){
                if(Hash::check($request->password,$electeur->password)){
                     return response()->json(['status'=>'false', 'message'=>"Vous avez deja vote", 'data'=>[]]);
                }else{
                    return response()->json(['status'=>'false', 'message'=>"mot de passe incorrect", 'data'=>'faux']);
                }
            }else{
                return response()->json(['status'=>'false', 'message'=>"Le CNI renseigné n'existe pas", 'data'=>'faux']);
            }
        }




    }

    public function me (Request $request){
        return $request->all();
    }
}
