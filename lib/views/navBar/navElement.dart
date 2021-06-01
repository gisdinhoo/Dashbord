import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavElement extends StatelessWidget {
  final _icon, _text;
  const NavElement(this._icon, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          onTap: () {},
          //focusColor: Colors.grey,
          hoverColor: Colors.black54,
          leading: _icon,
          title: Text(
            _text,
            style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
