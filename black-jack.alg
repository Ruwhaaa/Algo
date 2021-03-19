<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_TANT_QUE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tableau_carte" algoitem="tableau_carte EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#tableau_joueur" algoitem="tableau_joueur EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#tableau_mise" algoitem="tableau_mise EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#index" algoitem="index EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#last" algoitem="last EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#index_carte" algoitem="index_carte EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#valeur_carte" algoitem="valeur_carte EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#token" algoitem="token EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nb_joueurs" algoitem="nb_joueurs EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#finish" algoitem="finish EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#mise" algoitem="mise EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#temp" algoitem="temp EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#rand" algoitem="rand EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#retry" algoitem="retry EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tour" algoitem="tour EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#test" algoitem="test EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#valeur_as" algoitem="valeur_as EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#cartes_tirees" algoitem="cartes_tirees EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#temp#1#pasliste" algoitem="temp PREND_LA_VALEUR 1"/>
        <item code="5#valeur_carte#1#pasliste" algoitem="valeur_carte PREND_LA_VALEUR 1"/>
        <item code="5#rand#311#pasliste" algoitem="rand PREND_LA_VALEUR 311"/>
        <item code="5#index#0#pasliste" algoitem="index PREND_LA_VALEUR 0"/>
        <item code="15#valeur_carte &lt;= 13" algoitem="TANT_QUE (valeur_carte &lt;= 13) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="15#token != 24" algoitem="TANT_QUE (token != 24) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="5#tableau_carte#valeur_carte#index" algoitem="tableau_carte[index] PREND_LA_VALEUR valeur_carte"/>
                <item code="5#index#index + 1#pasliste" algoitem="index PREND_LA_VALEUR index + 1"/>
                <item code="5#token#token + 1#pasliste" algoitem="token PREND_LA_VALEUR token + 1"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="5#valeur_carte#valeur_carte + 1#pasliste" algoitem="valeur_carte PREND_LA_VALEUR valeur_carte + 1"/>
            <item code="5#token#0#pasliste" algoitem="token PREND_LA_VALEUR 0"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#nombre de joueurs 1 à 7 :#0" algoitem="AFFICHER &quot;nombre de joueurs 1 à 7 :&quot;"/>
        <item code="2#nb_joueurs#pasliste" algoitem="LIRE nb_joueurs"/>
        <item code="15#nb_joueurs &lt; 1 OU nb_joueurs > 7" algoitem="TANT_QUE (nb_joueurs &lt; 1 OU nb_joueurs > 7) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="2#nb_joueurs#pasliste" algoitem="LIRE nb_joueurs"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="15#temp &lt; nb_joueurs + 1" algoitem="TANT_QUE (temp &lt; nb_joueurs + 1) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#joueur #0" algoitem="AFFICHER &quot;joueur &quot;"/>
            <item code="3#temp#0#pasliste" algoitem="AFFICHER temp"/>
            <item code="4# à votre tour de mise :#1" algoitem="AFFICHER &quot; à votre tour de mise :&quot;"/>
            <item code="2#mise#pasliste" algoitem="LIRE mise"/>
            <item code="15#mise &lt; 5 OU mise > 300" algoitem="TANT_QUE (mise &lt; 5 OU mise > 300) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="2#mise#pasliste" algoitem="LIRE mise"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="5#tableau_mise#mise#temp" algoitem="tableau_mise[temp] PREND_LA_VALEUR mise"/>
            <item code="5#temp#temp + 1#pasliste" algoitem="temp PREND_LA_VALEUR temp + 1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="5#cartes_tirees#0#pasliste" algoitem="cartes_tirees PREND_LA_VALEUR 0"/>
        <item code="5#token#0#pasliste" algoitem="token PREND_LA_VALEUR 0"/>
        <item code="5#tour#1#pasliste" algoitem="tour PREND_LA_VALEUR 1"/>
        <item code="5#temp#101#pasliste" algoitem="temp PREND_LA_VALEUR 101"/>
        <item code="5#last#tableau_carte.length-1#pasliste" algoitem="last PREND_LA_VALEUR tableau_carte.length-1"/>
        <item code="5#index#0#pasliste" algoitem="index PREND_LA_VALEUR 0"/>
        <item code="12#tour#1#2" algoitem="POUR tour ALLANT_DE 1 A 2">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="12#index#0#nb_joueurs - token" algoitem="POUR index ALLANT_DE 0 A nb_joueurs - token">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#temp#((index+1)*100) + tour#pasliste" algoitem="temp PREND_LA_VALEUR ((index+1)*100) + tour"/>
                <item code="5#somme#((index+1)*100) + 50#pasliste" algoitem="somme PREND_LA_VALEUR ((index+1)*100) + 50"/>
                <item code="6#tour == 1" algoitem="SI (tour == 1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau_joueur#0#somme" algoitem="tableau_joueur[somme] PREND_LA_VALEUR 0"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#index_carte#floor(random()*(rand - cartes_tirees))#pasliste" algoitem="index_carte PREND_LA_VALEUR floor(random()*(rand - cartes_tirees))"/>
                <item code="6#tableau_carte[index_carte] == 1" algoitem="SI (tableau_carte[index_carte] == 1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#vous avez tiré un As voulez vous ajoutez 1 ou 11 ? : #1" algoitem="AFFICHER &quot;vous avez tiré un As voulez vous ajoutez 1 ou 11 ? : &quot;"/>
                    <item code="2#valeur_as#pasliste" algoitem="LIRE valeur_as"/>
                    <item code="15#valeur_as != 1 ET valeur_as != 11" algoitem="TANT_QUE (valeur_as != 1 ET valeur_as != 11) FAIRE">
                        <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                        <item code="2#valeur_as#pasliste" algoitem="LIRE valeur_as"/>
                        <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                    </item>
                    <item code="5#tableau_joueur#valeur_as#temp" algoitem="tableau_joueur[temp] PREND_LA_VALEUR valeur_as"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#tableau_carte[index_carte] > 9" algoitem="SI (tableau_carte[index_carte] > 9) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau_joueur#10#temp" algoitem="tableau_joueur[temp] PREND_LA_VALEUR 10"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#tableau_carte[index_carte] >= 2 &amp;&amp; tableau_carte[index_carte] &lt; 10" algoitem="SI (tableau_carte[index_carte] >= 2 &amp;&amp; tableau_carte[index_carte] &lt; 10) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau_joueur#tableau_carte[index_carte]#temp" algoitem="tableau_joueur[temp] PREND_LA_VALEUR tableau_carte[index_carte]"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#tableau_joueur#tableau_joueur[somme] + tableau_joueur[temp]#somme" algoitem="tableau_joueur[somme] PREND_LA_VALEUR tableau_joueur[somme] + tableau_joueur[temp]"/>
                <item code="5#tableau_carte#tableau_carte[last]#index_carte" algoitem="tableau_carte[index_carte] PREND_LA_VALEUR tableau_carte[last]"/>
                <item code="4#carte joueur #0" algoitem="AFFICHER &quot;carte joueur &quot;"/>
                <item code="20#floor(temp / 100)#0" algoitem="AFFICHERCALCUL floor(temp / 100)"/>
                <item code="4# : #0" algoitem="AFFICHER &quot; : &quot;"/>
                <item code="3#tableau_joueur#1#somme" algoitem="AFFICHER tableau_joueur[somme]"/>
                <item code="6#tableau_joueur[somme] == 21" algoitem="SI (tableau_joueur[somme] == 21) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#vous avez gagnez : &#x9;#0" algoitem="AFFICHER &quot;vous avez gagnez : &#x9;&quot;"/>
                    <item code="20#tableau_mise[floor(temp / 100)]*2#0" algoitem="AFFICHERCALCUL tableau_mise[floor(temp / 100)]*2"/>
                    <item code="4# euros #1" algoitem="AFFICHER &quot; euros &quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#tableau_joueur[somme] > 21" algoitem="SI (tableau_joueur[somme] > 21) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Vous avez perdu#0" algoitem="AFFICHER &quot;Vous avez perdu&quot;"/>
                    <item code="5#tableau_joueur#1#floor(temp)" algoitem="tableau_joueur[floor(temp)] PREND_LA_VALEUR 1"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#cartes_tirees#cartes_tirees + 1#pasliste" algoitem="cartes_tirees PREND_LA_VALEUR cartes_tirees + 1"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="5#token#token + 1#pasliste" algoitem="token PREND_LA_VALEUR token + 1"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19# //" algoitem="// //"/>
        <item code="5#index#0#pasliste" algoitem="index PREND_LA_VALEUR 0"/>
        <item code="5#token#0#pasliste" algoitem="token PREND_LA_VALEUR 0"/>
        <item code="5#temp#103#pasliste" algoitem="temp PREND_LA_VALEUR 103"/>
        <item code="15#finish != 1" algoitem="TANT_QUE (finish != 1) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#finish#1#pasliste" algoitem="finish PREND_LA_VALEUR 1"/>
            <item code="4#joueur #0" algoitem="AFFICHER &quot;joueur &quot;"/>
            <item code="20#floor(temp / 100)#0" algoitem="AFFICHERCALCUL floor(temp / 100)"/>
            <item code="4# voulez vous rejouer ?#1" algoitem="AFFICHER &quot; voulez vous rejouer ?&quot;"/>
            <item code="4#veuillez rentrer 1 pour oui ou 0 pour non #0" algoitem="AFFICHER &quot;veuillez rentrer 1 pour oui ou 0 pour non &quot;"/>
            <item code="2#retry#pasliste" algoitem="LIRE retry"/>
            <item code="15#retry &lt; 0 OU retry > 1" algoitem="TANT_QUE (retry &lt; 0 OU retry > 1) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="2#retry#pasliste" algoitem="LIRE retry"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="6#retry == 0" algoitem="SI (retry == 0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#tableau_joueur#1#floor(temp)" algoitem="tableau_joueur[floor(temp)] PREND_LA_VALEUR 1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#retry == 1" algoitem="SI (retry == 1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#temp#((index+1)*100) + tour#pasliste" algoitem="temp PREND_LA_VALEUR ((index+1)*100) + tour"/>
                <item code="5#somme#((index+1)*100) + 50#pasliste" algoitem="somme PREND_LA_VALEUR ((index+1)*100) + 50"/>
                <item code="6#tour == 1" algoitem="SI (tour == 1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau_joueur#0#somme" algoitem="tableau_joueur[somme] PREND_LA_VALEUR 0"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#index_carte#floor(random()*(rand - cartes_tirees))#pasliste" algoitem="index_carte PREND_LA_VALEUR floor(random()*(rand - cartes_tirees))"/>
                <item code="6#tableau_carte[index_carte] == 1" algoitem="SI (tableau_carte[index_carte] == 1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#vous avez tiré un As voulez vous ajoutez 1 ou 11 ? : #1" algoitem="AFFICHER &quot;vous avez tiré un As voulez vous ajoutez 1 ou 11 ? : &quot;"/>
                    <item code="2#valeur_as#pasliste" algoitem="LIRE valeur_as"/>
                    <item code="15#valeur_as != 1 ET valeur_as != 11" algoitem="TANT_QUE (valeur_as != 1 ET valeur_as != 11) FAIRE">
                        <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                        <item code="2#valeur_as#pasliste" algoitem="LIRE valeur_as"/>
                        <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                    </item>
                    <item code="5#tableau_joueur#valeur_as#temp" algoitem="tableau_joueur[temp] PREND_LA_VALEUR valeur_as"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#tableau_carte[index_carte] > 9" algoitem="SI (tableau_carte[index_carte] > 9) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau_joueur#10#temp" algoitem="tableau_joueur[temp] PREND_LA_VALEUR 10"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#tableau_carte[index_carte] >= 2 &amp;&amp; tableau_carte[index_carte] &lt; 10" algoitem="SI (tableau_carte[index_carte] >= 2 &amp;&amp; tableau_carte[index_carte] &lt; 10) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau_joueur#tableau_carte[index_carte]#temp" algoitem="tableau_joueur[temp] PREND_LA_VALEUR tableau_carte[index_carte]"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#tableau_joueur#tableau_joueur[somme] + tableau_joueur[temp]#somme" algoitem="tableau_joueur[somme] PREND_LA_VALEUR tableau_joueur[somme] + tableau_joueur[temp]"/>
                <item code="5#tableau_carte#tableau_carte[last]#index_carte" algoitem="tableau_carte[index_carte] PREND_LA_VALEUR tableau_carte[last]"/>
                <item code="4#carte joueur #0" algoitem="AFFICHER &quot;carte joueur &quot;"/>
                <item code="20#floor(temp / 100)#0" algoitem="AFFICHERCALCUL floor(temp / 100)"/>
                <item code="4# : #0" algoitem="AFFICHER &quot; : &quot;"/>
                <item code="3#tableau_joueur#1#somme" algoitem="AFFICHER tableau_joueur[somme]"/>
                <item code="6#tableau_joueur[somme] == 21" algoitem="SI (tableau_joueur[somme] == 21) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#vous avez gagnez : &#x9;#0" algoitem="AFFICHER &quot;vous avez gagnez : &#x9;&quot;"/>
                    <item code="20#tableau_mise[floor(temp / 100)]*2#0" algoitem="AFFICHERCALCUL tableau_mise[floor(temp / 100)]*2"/>
                    <item code="4# euros #1" algoitem="AFFICHER &quot; euros &quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#tableau_joueur[somme] > 21" algoitem="SI (tableau_joueur[somme] > 21) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Vous avez perdu#0" algoitem="AFFICHER &quot;Vous avez perdu&quot;"/>
                    <item code="5#tableau_joueur#1#floor(temp)" algoitem="tableau_joueur[floor(temp)] PREND_LA_VALEUR 1"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#cartes_tirees#cartes_tirees + 1#pasliste" algoitem="cartes_tirees PREND_LA_VALEUR cartes_tirees + 1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="5#index#index + 1#pasliste" algoitem="index PREND_LA_VALEUR index + 1"/>
            <item code="5#token#token + 1#pasliste" algoitem="token PREND_LA_VALEUR token + 1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
