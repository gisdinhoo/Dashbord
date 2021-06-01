import 'package:flutter/material.dart';
import 'package:panel/controller/responsive.dart';
import 'package:panel/views/dashboard/leftSide/leftSide.dart';
import 'package:panel/views/dashboard/rightSide/rightSide.dart';

class DashBord extends StatelessWidget {
  const DashBord({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 6,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Responsive(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeftSide(),
          SizedBox(
            height: 10,
          ),
          RigthSide()
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 5, child: LeftSide()),
          SizedBox(
            width: 10,
          ),
          Expanded(flex: 2, child: RigthSide())
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 5, child: LeftSide()),
          SizedBox(
            width: 10,
          ),
          Expanded(flex: 2, child: RigthSide())
        ],
      ),
    )
          ),
        ));
  }
}
