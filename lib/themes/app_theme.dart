import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xffFDAB01);
  static const Color terciary = Color(0xffF84C04);
  static const Color secondary = Color(0xffF95844);
  static const Color arrowBackColor = Color(0xff8BBF1D);
  static const Color tileBackground = Color.fromARGB(255, 239, 239, 239);

  //* TextStyle para Titulos dentro del customPainter
  
  static const TextStyle styleTitulos = TextStyle(
    fontFamily: 'Lexend SemiBold',
    fontSize: 30,
    color: Colors.white 
  );

  //* TextStyle para Label del BottomNavigationBar
  static const TextStyle styleLabel = TextStyle(
    fontFamily: 'Lexend Light',
    fontSize: 14,
    color: secondary
  );

  static const TextStyle styleLabelUnselected = TextStyle(
    fontFamily: 'Lexend Light',
    fontSize: 12,
    color: Colors.grey
  );

  //* TextStyle para searchDelegate

  static const TextStyle styleSearchDelegateLabel = TextStyle(
    fontFamily: 'Lexend SemiBold',
    fontSize: 16,
    color: primary
  );

  //* TextStyle para imageAsset en la searchDelegate
  
  static const TextStyle styleTextImageAsset = TextStyle(
    fontFamily: 'Lexend Bold',
    fontSize: 26,
    color: Colors.black38
  );

  static const TextStyle styleSubTextImageAsset = TextStyle(
    fontFamily: 'Lexend Bold',
    fontSize: 20,
    color: Colors.black38
  );

  //* TextStyle para Titulo "Productos Populares" en ProductosView
  
  static const TextStyle styleTituloListaProductos = TextStyle(
    fontFamily: 'Lexend Bold',
    fontSize: 22,
    color: Colors.black87
  );

  //* TextStyle para Titulo en el ScrollView en ProductosView
  
  static const TextStyle styleDescripcionProdc = TextStyle(
    fontFamily: 'Lexend Bold',
    fontSize: 16,
    color: Colors.black87
  );

  static const TextStyle stylePrecioProdc = TextStyle(
    fontFamily: 'Lexend Bold',
    fontSize: 16,
    color: primary
  );

  static const TextStyle styleCategoriaProdc = TextStyle(
    fontFamily: 'Lexend Light',
    fontSize: 14,
    color: Colors.black54
  );
  
  //* TextStyle para "Bienvenido a ViewGO"
  
  static const TextStyle bienvenidoBanner = TextStyle(
    fontFamily: 'Lexend Bold',
    fontSize: 26,
    color: Colors.white
  );

   static const TextStyle instruccionesBanner = TextStyle(
    fontFamily: 'Lexend Semibold',
    fontSize: 16,
    color: Colors.black87
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    bottomAppBarColor: const Color(0xffFDAB01),
  );
}
