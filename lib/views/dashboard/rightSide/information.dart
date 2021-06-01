import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//For informations about postpone courses and upcoming tests
class Information extends StatelessWidget {
  final String title, date, course;
  const Information({this.title, this.date, this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      //width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 7.5,
              spreadRadius: 1.0,
              color: Colors.black12,
            )
          ]),
      child: Row(
        children: [
          Container(
            width: 10.0,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.quicksand(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  date,
                  style: GoogleFonts.quicksand(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(course,
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
