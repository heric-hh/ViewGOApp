import 'package:flutter/material.dart';
import 'package:viewgoapp/presentation/screens/screens.dart'; 

class AppRoutes {
  
  /// * Propiedades y métodos estáticos que sirven para acceder a las rutas de la aplicacion
  
  static const initialRoute = 'home';   // * Ruta inicial de la aplicacion
  
  static Map<String, Widget Function (BuildContext)> routes = { //* Mapa de rutas estáticas de la aplicación 
      'home'  :  (context) => const HomeScreen(),
  };

  static Route<dynamic> onGenerateRoutes (RouteSettings settings) { //* Generar rutas dinámicas en caso de que alguna ruta no esté configurada
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
  
}