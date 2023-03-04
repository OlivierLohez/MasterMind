import '../Tableau/MesFonctions.dart';
import 'mastermind.dart';

main(List<String> args) {
  print(
      "choissisez les couleurs que devra cherchez l'autre joueur:première couleur");
  print("choississez entre le jaune,bleu,vert,rouge");
  String couleur1 = saisirString();
  Pion case1 = new Pion(couleur1);

  print("choississez la deuxieme couleur entre jaune,bleu,vert et rouge");
  String couleur2 = saisirString();
  Pion case2 = new Pion(couleur2);

  print("choississez la troisieme couleur entre jaune,bleu,vert et rouge");
  String couleur3 = saisirString();
  Pion case3 = new Pion(couleur3);

  print("choississez la quatrieme couleur entre jaune,bleu,vert et rouge");
  String couleur4 = saisirString();
  Pion case4 = new Pion(couleur4);

  print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
  Mastermind Test = new Mastermind(case1, case2, case3, case4);
  int resultat = Test.recherchedelabonnecouleur(case1, case2, case3, case4);
  if (resultat == 1) {
    print("Victoire,vous avez trouvé la suite de couleur");
  } else {
    print("Défaite,vous n'avez pas trouvé la suite de couleur");
  }
}
