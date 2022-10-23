import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/service/data.service';

@Component({
  selector: 'app-resultat',
  templateUrl: './resultat.component.html',
  styleUrls: ['./resultat.component.css']
})
export class ResultatComponent implements OnInit {
votes: any;
  constructor(private dataService:DataService) { }

  ngOnInit(): void {
    this.resultat();
  }

  resultat(){
    this.dataService.resultat().subscribe(res =>{
      console.log(res);
      this.votes = res;
    })
  }



}
