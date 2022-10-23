import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/service/data.service';
import { Verif } from 'src/app/verif';
@Component({
  selector: 'app-verification',
  templateUrl: './verification.component.html',
  styleUrls: ['./verification.component.css']
})
export class VerificationComponent implements OnInit {


verifs:any;
verif = new Verif;
data:any;
  constructor(private dataService:DataService) { }

  ngOnInit(): void {
  }


  verifie(){
    this.dataService.verifie(this.verif).subscribe(res =>{
      console.log(res);
      this.data = res;

    });
  }

}
