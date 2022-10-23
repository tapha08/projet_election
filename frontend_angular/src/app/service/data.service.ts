import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Electeur } from '../electeur';
import { User } from '../user';
import { Router } from '@angular/router';
import { Vote } from '../vote';
import { Verif } from '../verif';


@Injectable({
  providedIn: 'root'
})
export class DataService {


  constructor(private httpClient: HttpClient, public router: Router) { }

  insertData(data:Electeur){
    return this.httpClient.post('http://127.0.0.1:8000/api/inscription', data);
  }

  afficheData(){
    return this.httpClient.get('http://127.0.0.1:8000/api/candidats');
  }

  verifieData(donne:User){
    return this.httpClient.post('http://127.0.0.1:8000/api/traitement', donne);
  }




  login(donnee:User){
    return this.httpClient.post('http://127.0.0.1:8000/api/login', donnee,);
  }

 insertVote(data:Vote){
    return this.httpClient.post('http://127.0.0.1:8000/api/vote', data);
  }

  resultat(){
    return this.httpClient.get('http://127.0.0.1:8000/api/resultat');
  }

  verifie(data:Verif){
    return this.httpClient.post('http://127.0.0.1:8000/api/verification', data);
  }



  /*public setToken(token: any){

    localStorage.setItem('token', token);
  }*/



}
