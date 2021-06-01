import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//For calendar de days and dates
class DaysDates extends StatelessWidget {
  final String day, date;
  const DaysDates({this.date, this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 30,
      decoration: BoxDecoration(
          color: (date == "10") ? Color(0xff333951) : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 7.5,
              spreadRadius: 1.0,
              color: Colors.black12,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date,
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color: (date == "10") ? Colors.white : Colors.black)),
          Text(day,
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                  color: (date == "10") ? Colors.white : Colors.black)),
        ],
      ),
    );
  }
}