import "dart:io";

int saisirInt() {
  bool valide = false;
  int i = 0;
  while (!valide) {
    print("Veuiller saisir un entier:");
    try {
      i = int.parse(stdin.readLineSync().toString());
      valide = true;
    } catch (e) {
      print("Erreur de saisie");
    }
  }
  return i;
}

double saisirDouble() {
  bool valide = false;
  double i = 0;
  while (!valide) {
    print("Veuillez saisir un Double:");
    try {
      i = double.parse(stdin.readLineSync().toString());
      valide = true;
    } catch (e) {
      print("Erreur dans la saisie!");
    }
  }
  return i;
}

String saisirString() {
  bool valide = false;
  String i = "mot";
  while (!valide) {
    print("Veuillez saisir une chaine de caractères");
    try {
      i = stdin.readLineSync().toString();
      valide = true;
    } catch (e) {
      print("Erreur dans la saisie!");
    }
  }
  return i;
}
