import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ElecteursComponent } from './components/electeurs/electeurs.component';
import { ConnexionComponent } from './components/connexion/connexion.component';
import { RetroComponent } from './components/retro/retro.component';
import { CandidatsComponent } from './components/candidats/candidats.component';
import { Redirection1Component } from './components/redirection1/redirection1.component';
import { Redirection2Component } from './components/redirection2/redirection2.component';
import { Res2019Component } from './components/res2019/res2019.component';
import { ResultatComponent } from './components/resultat/resultat.component';
import { VerificationComponent } from './components/verification/verification.component';


const routes: Routes = [
  { path:'accueil', component:ElecteursComponent },
  { path:'connexion', component: ConnexionComponent },
  {path:'retro', component: RetroComponent},
  {path:'candidats', component: CandidatsComponent},
  {path:'validation', component: Redirection1Component},
  {path:'voted', component: Redirection2Component},
  {path: '2019', component: Res2019Component},
  {path: 'resultat', component: ResultatComponent},
  {path: 'verification', component: VerificationComponent},

  { path: '', redirectTo: 'accueil', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
