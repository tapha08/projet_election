import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'candidatPartiColor'
})
export class CandidatPartiColorPipe implements PipeTransform {
transform(nomparti: string): string {

    let color: string;

    switch (nomparti) {
      case 'Yewwi Askan Wi':
        color = 'green lighten-1';
        break;
      case 'Republique Des Valeurs':
        color = 'blue lighten-1';
        break;
      case 'Benno Bokk yakkar':
        color = 'brown lighten-1';
        break;
      case 'Les Serviteurs':
        color = 'blue lighten-3';
        break;
      case 'Bokk Guiss Guiss':
        color = 'yellow lighten-1';
        break;
      case 'Rewmi':
        color = 'deep-orange';
        break;
      default:
        color = 'grey';
        break;
    }

    return  color;

  }


}
