import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:panel/views/dashboard/rightSide/daysDates.dart';
import 'package:panel/views/dashboard/rightSide/information.dart';

class RigthSide extends StatelessWidget {
  const RigthSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF7F7FF),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: ShapeDecoration(shape: CircleBorder()),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: AssetImage("assets/dio2.png"),
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Mai 2021",
              style: GoogleFonts.quicksand(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DaysDates(
                  date: "07",
                  day: "Ve",
                ),
                DaysDates(
                  date: "08",
                  day: "Sa",
                ),
                DaysDates(
                  date: "09",
                  day: "Di",
                ),
                DaysDates(
                  date: "10",
                  day: "Lu",
                ),
                DaysDates(
                  date: "11",
                  day: "Ma",
                ),
                DaysDates(
                  date: "12",
                  day: "Me",
                ),
                DaysDates(
                  date: "13",
                  day: "Je",
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Text("Informations",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                )),
            Information(
              title: "Devoir programmé",
              date: "Jeudi 13 à 8h00",
              course: "Sécurité des réseaux",
            ),
            Information(
              title: "Cours reporté",
              date: "Vendredi 14",
              course: "Gestion de projet",
            ),
            Center(
              child: ClipRRect(
                child: Lottie.asset(
                  "assets/anim.json",
                  height: 300.0,
                  width: 400.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
