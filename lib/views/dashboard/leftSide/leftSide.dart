import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel/controller/responsive.dart';
import 'package:panel/views/dashboard/leftSide/courseEvolution.dart';
import 'package:panel/views/dashboard/leftSide/dashboardHead.dart';
import 'package:provider/provider.dart';
import '../matiere.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final mat = Provider.of<ListMatiere>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DashboardHead(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Progression des cours",
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600, fontSize: 15),
            ),
            // Text(
            //   "INGC3-ARIT",
            //   style: GoogleFonts.quicksand(
            //       fontWeight: FontWeight.w600, fontSize: 15),
            // ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Responsive(
            mobile: CourseEvolution(
              mat: mat,
              crossAxisCount: _size.width < 650 ? 2 : 4,
              ratio: _size.width < 400
                  ? 1
                  : _size.width < 550
                      ? 1.25
                      : _size.width < 650
                          ? 1.75
                          : 1,
            ),
            tablet: CourseEvolution(
              mat: mat,
            ),
            desktop: CourseEvolution(
              mat: mat,
              ratio: _size.width < 1200 ? 0.9 : 1,
            )),
        //CourseEvolution(mat: mat),
        SizedBox(
          height: 30,
        ),
        Text(
          "Emploi du temps",
          style:
              GoogleFonts.quicksand(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
