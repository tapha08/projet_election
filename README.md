# projet_election

Pour pouvoir bien demarrer ce projet dans votre ordinateur il faut au prealable:

1- Telecharger Node js et Npm pour pouvoir utiliser angular
2- Telecharger composer pour laravel
3-Telecharger xampp ou wamp (ca depend de votre systeme et votre preference)
4-Telecharger vs code ou aute similaire

apres avoir telecharger tout cela dans votre machine passons à l'etape de demarrage:

1-demarrer xampp ou wamp
2-Acceder a phpmyadmin et creer une nouvelle base de donnée nommée election et ensuite importez le fichier election.sql ci-joint
3-Ouvrer le backend laravel dans Vs-code et demarrer le serveur en tapant la commande "php artisan serve" dans le terminal de vs-code ou 
  dans le terminal de votre ordinateur en vous placant dans le repertoire du dossier laravel 
4-Ouvrer le frontend angular dans Vs-code et demarrer le serveur en faisant le meme procede mais en tapant la commande "ng serve"
5-Une fois les deux serveurs demarrer rendez vous dans votre navigateur (chrome de preference) et saisissez l'url suivant:
 http://localhost:4200
 
 NB: 
 Une fois dans la plateforme, le formulaire d'inscription qui se trouve dans la  page d'accueil permettant ainsi l'inscription d'un electeur dans le fichier electoral,
 possede un champ nommé "commune" ou l'electeur dois y renseigner sa commune. Ce champ n'accepte que les données fournies dans notre base de données.
 les communes fournies dans notre base de données à titre d'exemple sont:
  -Fatick
  -Grand Dakar
  -Ouakam
  -Plateau
  -Pout 
  -Saint Louis
  -Thies Est
  -Thies Nord
  -Thies Ouest
  -Ziguinchor
