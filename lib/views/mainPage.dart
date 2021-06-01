import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panel/controller/controller.dart';
import 'package:panel/controller/responsive.dart';
import 'package:panel/views/dashboard/dashBord.dart';
import 'package:panel/views/navBar/navBar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<Controller>().scaffoldKey,
      drawer: NavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Navigation bar
          if (Responsive.isDesktop(context)) Expanded(child: NavBar()),
          //Dashboard section
          DashBord()
        ],
      )),
    );
  }
}
