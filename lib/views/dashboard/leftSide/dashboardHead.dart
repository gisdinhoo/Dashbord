import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panel/controller/controller.dart';
import 'package:panel/controller/responsive.dart';
import 'package:provider/provider.dart';

//a part of the left side contening the welcome word
class DashboardHead extends StatelessWidget {
  const DashboardHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xff333951),
      child: Column(
        children: [
          Row(
            children: [
              if (!Responsive.isDesktop(context))
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => context.read<Controller>().controlMenu(),
                  ),
                ),
              Text(
                "Bienvenue ",
                style: GoogleFonts.fascinate(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
