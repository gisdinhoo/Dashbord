import 'package:flutter/material.dart';

class Matiere {
  String prof, matiere;
  int coeff;
  Color color;
  int percent;
  bool hovered = false;
  Matiere({this.matiere, this.prof, this.coeff, this.color, this.percent});
}

class ListMatiere with ChangeNotifier {
  //final url = "https://espiot-a0a57-default-rtdb.firebaseio.com/pins";
  List<Matiere> matieres = [
    Matiere(
        matiere: "TTS",
        coeff: 4,
        prof: "Magaye Diop",
        color: Color(0xffff4c60),
        percent: 25),
    Matiere(
        matiere: "Java",
        coeff: 4,
        prof: "Akinocho",
        color: Color(0xff6c6ce5),
        percent: 50),
    Matiere(
        matiere: "Anglais",
        coeff: 2,
        prof: "Edem",
        color: Color(0xfffaaa1e),
        percent: 75),
    Matiere(
        matiere: "RNIS",
        coeff: 3,
        prof: "Boudal",
        color: Color(0xff003c60),
        percent: 43),
  ];

  void changeHover(int i) {
    matieres[i].hovered = !matieres[i].hovered;
    notifyListeners();
  }
  // void changeHoverMobile(int i){
  //    for (var item in matieres) {
  //     item.hovered = false;
  //   }
  //   matieres[i].hovered = true;
  //   notifyListeners();
  // }
}
