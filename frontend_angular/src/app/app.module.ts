import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';
import {FormsModule} from '@angular/forms';


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ElecteursComponent } from './components/electeurs/electeurs.component';
import { ConnexionComponent } from './components/connexion/connexion.component';
import { RetroComponent } from './components/retro/retro.component';
import { CandidatsComponent } from './components/candidats/candidats.component';
import { BorderCardDirective } from './border-card.directive';
import { Redirection1Component } from './components/redirection1/redirection1.component';
import { Redirection2Component } from './components/redirection2/redirection2.component';
import { Res2019Component } from './components/res2019/res2019.component';
import { ResultatComponent } from './components/resultat/resultat.component';
import { VerificationComponent } from './components/verification/verification.component';
import { CandidatPartiColorPipe } from './candidat-parti-color.pipe';




const appRoutes: Routes = [

  //{ path:'', component:ElecteursComponent }
];


@NgModule({
  declarations: [
    AppComponent,
    ElecteursComponent,
    ConnexionComponent,
    RetroComponent,
    CandidatsComponent,
    BorderCardDirective,
    Redirection1Component,
    Redirection2Component,
    Res2019Component,
    ResultatComponent,
    VerificationComponent,
    CandidatPartiColorPipe,


  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot(appRoutes),
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
