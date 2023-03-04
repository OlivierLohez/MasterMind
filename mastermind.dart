import 'dart:math';

import '../Tableau/MesFonctions.dart';

class Mastermind {
  Pion _couleur1;
  Pion _couleur2;
  Pion _couleur3;
  Pion _couleur4;

//constructeur de la classe Mastermind
  Mastermind(this._couleur1, this._couleur2, this._couleur3, this._couleur4);

  int recherchedelabonnecouleur(_couleur1, _couleur2, _couleur3, _couleur4) {
    int resultat = 1;
    List<String> tableauMastermind = List.generate(4, (index) => " ");
    tableauMastermind[0] = _couleur1.getCouleur();
    tableauMastermind[1] = _couleur2.getCouleur();
    tableauMastermind[2] = _couleur3.getCouleur();
    tableauMastermind[3] = _couleur4.getCouleur();
    int nombrerouge = 0;
    int nombrevert = 0;
    int nombrebleu = 0;
    int nombrejaune = 0;
    for (int x = 0; x < tableauMastermind.length; x++) {
      if (tableauMastermind[x] == "rouge") {
        nombrerouge = nombrerouge + 1;
      } else if (tableauMastermind[x] == "vert") {
        nombrevert = nombrevert + 1;
      } else if (tableauMastermind[x] == "bleu") {
        nombrebleu = nombrebleu + 1;
      } else if (tableauMastermind[x] == "jaune") {
        nombrejaune = nombrejaune + 1;
      }
    }
    int nombredepionbienplacer = 0;
    int nombredecouleurcorrecte = 0;
    int nombrederouge = 0;
    int nombredevert = 0;
    int nombredejaune = 0;
    int nombredebleu = 0;
    int x = 0;
    print("Essayez de trouver la suite de couleur");
    while (x < 12) {
      //la première couleur
      print("Quel est la première couleur,rouge,vert,jaune ou bleu\n");
      String premier = saisirString();
      if (premier == tableauMastermind[0]) {
        nombredepionbienplacer = nombredepionbienplacer + 1;
      }
      if (premier == "rouge") {
        nombrederouge = nombrederouge + 1;
      } else if (premier == "vert") {
        nombredevert = nombredevert + 1;
      } else if (premier == "jaune") {
        nombredejaune = nombredejaune + 1;
      } else if (premier == "bleu") {
        nombredebleu = nombredebleu + 1;
      }

      //la deuxième couleur
      print("Quel est la deuxième couleur,rouge,vert,jaune ou bleu\n");
      String deuxieme = saisirString();
      if (deuxieme == tableauMastermind[1]) {
        nombredepionbienplacer = nombredepionbienplacer + 1;
      }
      if (premier == "rouge") {
        nombrederouge = nombrederouge + 1;
      } else if (premier == "vert") {
        nombredevert = nombredevert + 1;
      } else if (premier == "jaune") {
        nombredejaune = nombredejaune + 1;
      } else if (premier == "bleu") {
        nombredebleu = nombredebleu + 1;
      }

      //la troisième couleur
      print("Quel est la troisième couleur,rouge,vert,jaune ou bleu\n");
      String troisieme = saisirString();
      if (troisieme == tableauMastermind[2]) {
        nombredepionbienplacer = nombredepionbienplacer + 1;
      }
      if (premier == "rouge") {
        nombrederouge = nombrederouge + 1;
      } else if (premier == "vert") {
        nombredevert = nombredevert + 1;
      } else if (premier == "jaune") {
        nombredejaune = nombredejaune + 1;
      } else if (premier == "bleu") {
        nombredebleu = nombredebleu + 1;
      }

      //la quatrième couleur
      print("Quel est la quatrième couleur,rouge,vert,jaune ou bleu\n");
      String quatrieme = saisirString();
      if (quatrieme == tableauMastermind[3]) {
        nombredepionbienplacer = nombredepionbienplacer + 1;
      }
      if (premier == "rouge") {
        nombrederouge = nombrederouge + 1;
      } else if (premier == "vert") {
        nombredevert = nombredevert + 1;
      } else if (premier == "jaune") {
        nombredejaune = nombredejaune + 1;
      } else if (premier == "bleu") {
        nombredebleu = nombredebleu + 1;
      }

      if (nombrederouge >= nombrerouge) {
        nombredecouleurcorrecte = nombredecouleurcorrecte + nombrerouge;
      }
      if (nombredebleu >= nombrebleu) {
        nombredecouleurcorrecte = nombredecouleurcorrecte + nombrebleu;
      }
      if (nombredevert >= nombrevert) {
        nombredecouleurcorrecte = nombredecouleurcorrecte + nombredevert;
      }
      if (nombredejaune >= nombrejaune) {
        nombredecouleurcorrecte = nombredecouleurcorrecte + nombrejaune;
      }
      print("Vous avez trouvé " +
          nombredecouleurcorrecte.toString() +
          " couleurs correctes \n");

      print("Vous avez bien placé " +
          nombredepionbienplacer.toString() +
          " pions \n");

      if (nombredepionbienplacer == 4) {
        resultat = 1;
        x = 12;
      }
      nombredebleu = 0;
      nombredevert = 0;
      nombredejaune = 0;
      nombrederouge = 0;
      nombredepionbienplacer = 0;
      nombredecouleurcorrecte = 0;
    }
    return resultat;
  }
}

class Pion {
  String _couleur;

//constructeur de la classe Pion
  Pion(this._couleur);

  String getCouleur() {
    return this._couleur;
  }
}
