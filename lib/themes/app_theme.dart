import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xffFDAB01);
  static const Color terciary = Color(0xffF84C04);
  static const Color secondary = Color(0xffF95844);

  //* TextStyle para Titulos dentro del customPainter
  
  static const TextStyle styleTitulos = TextStyle(
    fontFamily: 'Lexend SemiBold',
    fontSize: 30,
    color: Colors.white 
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    bottomAppBarColor: const Color(0xffFDAB01),
  );
}
