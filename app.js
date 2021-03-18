var temp = 1;
var valeur_carte = 1
let tableau_carte = [];
var index = 0;
var token = 0;
var nbjoueurs = 0;

while (valeur_carte <= 13) {
    while (token != 24) {
        tableau_carte[index] = valeur_carte;
        console.log(tableau_carte[index]);
        index++;
        token++;
    }
    valeur_carte++;
    token = 0;
}
setTimeout(() => {  
    nbjoueurs = window.prompt('Nombre de joueurs de 1 à 7 : ','ex : 5');
    while (nbjoueurs > 7 || nbjoueurs < 1) {
        nbjoueurs = window.prompt('rentrez à nouveau un noubre de joueur de 1 à 7 : ','ex : 5');
    }
    console.log(nbjoueurs);
}, 2000);

