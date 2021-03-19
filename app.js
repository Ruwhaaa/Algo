var temp = 1;
var valeur_carte = 15
let tableau_carte = [];
let tableau_mise = [];
var index = 0;
var token = 0;
var nbjoueurs = 0;
var mise = 0;

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

nbjoueurs = window.prompt('Nombre de joueurs de 1 à 7 : ', 'ex : 5');
while (nbjoueurs > 7 || nbjoueurs < 1) {
    nbjoueurs = window.prompt('rentrez à nouveau un noubre de joueur de 1 à 7 : ', 'ex : 5');
}
while (temp <= nbjoueurs) {
    mise = window.prompt(`joueur ${temp} à votre tour de miser : `, 'ex : 20');
    while (mise < 5 || mise > 300) {
        mise = window.prompt(`joueur ${temp} à votre tour de miser : `, 'ex : 20');
        }
    if (temp == 1) {
        nbjoueurs++;
    }
    tableau_mise[temp] = mise;
    temp++;
}
console.log("hello");

