<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VoteController;
use App\Http\Controllers\VerifController;
use App\Http\Controllers\CandidatController;
use App\Http\Controllers\ElecteurController;
use App\Http\Controllers\ResultatController;
use App\Http\Controllers\ConnexionController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::get('/candidats', [CandidatController::class, 'getCandidat']); //->middleware('auth:sanctum');

Route::get('/resultat', [ResultatController::class, 'getvote']);

Route::post('/inscription',[ElecteurController::class,'addElecteur']);

Route::post('/login', [ConnexionController::class, 'traitement']);

Route::post('/verification', [VerifController::class, 'verification']);

Route::post('/vote',[VoteController::class,'addVote']);

Route::get('/me', [ConnexionController::class, 'me']);

