import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';

import { DataService } from 'src/app/service/data.service';
import { User } from 'src/app/user';
import { Electeur } from 'src/app/electeur';

@Component({
  selector: 'app-connexion',
  templateUrl: './connexion.component.html',
  styleUrls: ['./connexion.component.css']
})
export class ConnexionComponent implements OnInit {

  users:any;
  user = new User;
  data:any;
  serverErrors: null | undefined  ;
  constructor( private router: Router, private dataService:DataService) {

   }

  ngOnInit() {

  }

  /*goToAccueil(){
    this.router.navigate(['/accueil']);
  }*/

  login(){
    this.dataService.login(this.user).subscribe((response) => {
      console.log(response);
      this.data=response;
      if(this.data.message=="connecte"){

        localStorage.setItem('token', this.data.access_token);
        localStorage.setItem('id', this.data.data);
        //this.dataService.setToken(this.data.data)
        this.router.navigate(['/candidats']);

      }else{
        if(this.data.message=="Vous avez deja vote"){
        this.router.navigate(['/voted']);
        }
      }

    },(err) => {
      this.serverErrors = err.error;
      console.log(err);
      console.log(err.error.errors);
    });


      //this.router.navigate(['/candidats'])

  }


}
