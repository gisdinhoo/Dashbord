import 'package:flutter/material.dart';
import 'package:panel/views/navBar/navElement.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      color: Color(0xff333951),
      child: ListView(
        children: [
          DrawerHeader(
              child: Icon(
            Icons.ac_unit_rounded,
            color: Colors.white,
            size: 40,
          )),
          NavElement(
              Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              "Dasboard"),
          NavElement(Icon(Icons.file_copy, color: Colors.white), "Files"),
          NavElement(Icon(Icons.settings, color: Colors.white), "Settings"),
          NavElement(Icon(Icons.logout, color: Colors.white), "LogOut"),
        ],
      ),
    );
  }
}
