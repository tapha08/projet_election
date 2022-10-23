import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

import { DataService } from 'src/app/service/data.service';

import { Vote } from 'src/app/vote';
@Component({
  selector: 'app-candidats',
  templateUrl: './candidats.component.html',
  styleUrls: ['./candidats.component.css']
})
export class CandidatsComponent implements OnInit {
candidats:any;
data:any;
id:any;
votes:any;
vote = new Vote;

  constructor(private dataService:DataService, private router:Router) { }

  ngOnInit(): void {
    this.afficheData();
  }

  afficheData(){
    this.dataService.afficheData().subscribe(res =>{
      console.log(res);
      this.candidats = res;
    })


  }

  /*getId(id:any){
    return console.log(id);
  }*/

  insertVote(id:any){
     this.id= localStorage.getItem('id');
     this.vote.id_candidat = id;
     this.vote.id=this.id;
     this.dataService.insertVote(this.vote).subscribe(res=>{
      console.log(res);
      console.log(this.vote);
      this.router.navigate(['/voted']);
     });
    //console.log(this.id);
    //console.log(id);
    }

   /* this.getId(candidat.id)

    this.dataService.insertVote(this.data.id,);*/
 // }


}
