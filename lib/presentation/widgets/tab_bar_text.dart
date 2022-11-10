import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class aTabBarText extends StatelessWidget {
  final String text;
  const aTabBarText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 20)),
    );
  }
}
