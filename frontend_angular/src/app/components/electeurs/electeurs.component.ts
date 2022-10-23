import { OnInit } from '@angular/core';
import { Component, } from '@angular/core';
import { Router } from '@angular/router';

import { Electeur } from 'src/app/electeur';
import { DataService } from 'src/app/service/data.service';


@Component({
  selector: 'app-electeurs',
  templateUrl: './electeurs.component.html',
  styleUrls: ['./electeurs.component.css']
})
export class ElecteursComponent implements OnInit {

electeurs:any;
electeur = new Electeur;
data:any;
  constructor(private dataService:DataService, private router:Router) {

  }

  ngOnInit() {

  }



  insertData(){
    this.dataService.insertData(this.electeur).subscribe(res =>{
      console.log(res);
      this.data = res;
      if(this.data.status == "true"){
      this.router.navigate(['/validation']);
      }
      //return "inscripion validée";
    });
  }

  retour(){
    this.router.navigate(['/']);
  }
}
