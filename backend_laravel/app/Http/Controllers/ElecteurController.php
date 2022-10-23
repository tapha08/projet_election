<?php

namespace App\Http\Controllers;

use Hash;



use Validator;
use App\Models\Electeur;
use Illuminate\Http\Request;

class ElecteurController extends Controller
{
    //
    //creer un electeur
    public function addElecteur(Request $request){

       $validators = validator::make($request->all(),[
            'id' => 'required | unique:electeurs',
            'prenom' => 'required',
            'nom' => 'required',
            'email' => 'required | email | unique:electeurs',
            'datenaissance' => 'required',
            'commune' => 'required',
            'password' => 'required | confirmed | min:6',
            'password_confirmation' => 'required'
        ]);

        if($validators->fails()){
           // dd($validators->errors());
            return response()->json(['status'=>'false']);
        }else{

         $electeur = Electeur::create(['id'=>request('id'),'prenom'=>request('prenom'), 'nom'=>request('nom'), 'email'=>request('email'), 'datenaissance'=>request('datenaissance'), 'commune'=>request('commune'), 'password'=>Hash::make((request('password')))]);
         return response()->json(['status'=>'true']);
        }
    }

    //validation inscription
   /* public function validInscription(Request $request){
        if($request->prenom&&$request->nom&&$request->CNI&&$request->email&&$request->datenaissance&&$request->commune&&$request->password){
            return "Inscription reussi merci";
        }
    }*/
}
