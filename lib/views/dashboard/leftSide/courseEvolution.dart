import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel/views/dashboard/matiere.dart';
import 'package:provider/provider.dart';

//Courses evolution list grid
class CourseEvolution extends StatelessWidget {
  final ListMatiere mat;
  final int crossAxisCount;
  final double ratio;

  CourseEvolution({
    @required this.mat,
    this.crossAxisCount = 4,
    this.ratio = 1,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: mat.matieres.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: ratio),
        itemBuilder: (context, i) => GridElement(index: i));
  }
}

class GridElement extends StatelessWidget {
  final int index;
  GridElement({
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    final mat = Provider.of<ListMatiere>(context);
    //final _size = MediaQuery.of(context).size;
    //mouse region
    return MouseRegion(
      onEnter: (value) {
        mat.changeHover(index);
      },
      onExit: (value) {
        mat.changeHover(index);
      },
      // onHover: (value) {
      //   if (_size.width < 500) mat.changeHoverMobile(index);
      // },
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: mat.matieres[index].hovered
              ? mat.matieres[index].color
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        //duration: Duration(microseconds: 1000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Icon(Icons.menu_book_sharp,
                      color: mat.matieres[index].hovered
                          ? Colors.white
                          : Colors.black),
                ),
                Text("${mat.matieres[index].matiere}",
                    style: GoogleFonts.itim(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: mat.matieres[index].hovered
                            ? Colors.white
                            : Colors.black)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            Text(
              "Prof : ${mat.matieres[index].prof}",
              style: GoogleFonts.itim(
                  fontWeight: FontWeight.w200,
                  fontSize: 15,
                  color: mat.matieres[index].hovered
                      ? Colors.white
                      : Colors.black),
            ),
            Text(
              "Coef : ${mat.matieres[index].coeff}",
              style: GoogleFonts.itim(
                  fontWeight: FontWeight.w100,
                  fontSize: 12,
                  color: mat.matieres[index].hovered
                      ? Colors.white
                      : Colors.black),
            ),
            SizedBox(
              height: 18,
            ),
            //percentage alignment
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "${mat.matieres[index].percent}%",
                style: GoogleFonts.itim(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                    color: mat.matieres[index].hovered
                        ? Colors.white
                        : Colors.black),
              ),
            ),
            // Progresse bar
            Stack(
              children: [
                //background container
                Container(
                  width: double.infinity,
                  height: 6,
                  decoration: BoxDecoration(
                    color: mat.matieres[index].hovered
                        ? Colors.white.withOpacity(0.2)
                        : mat.matieres[index].color.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                //progression container indicator
                LayoutBuilder(
                    builder: (context, constraints) => Container(
                          width: constraints.maxWidth *
                              (mat.matieres[index].percent / 100),
                          height: 6,
                          decoration: BoxDecoration(
                              color: mat.matieres[index].hovered
                                  ? Colors.white
                                  : mat.matieres[index].color.withOpacity(1),
                              borderRadius: BorderRadius.circular(15)),
                        ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
