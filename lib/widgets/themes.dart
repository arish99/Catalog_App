import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      canvasColor: creamColour,
      cardColor: Colors.white,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(color: Colors.black)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.dark,
      canvasColor: darkCreamColour,
      cardColor: Colors.black,
      buttonColor: lightBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(color: Colors.white)));
  static Color creamColour = Color(0xfff5f5f5);
  static Color darkCreamColour = Vx.gray800;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
