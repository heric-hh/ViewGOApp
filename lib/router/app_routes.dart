import 'package:flutter/material.dart';
import 'package:viewgoapp/presentation/screens/screens.dart';

class AppRoutes {
  
  /// * Propiedades y métodos estáticos que sirven para acceder a las rutas de la aplicacion
  
  static const initialRoute = 'sucursales';   // * Ruta inicial de la aplicacion
  
  static Map<String, Widget Function (BuildContext)> routes = { //* Mapa de rutas estáticas de la aplicación 
      'sucursales'  :  (context) => const SucursalesScreen(),
  };

  static Route<dynamic> onGenerateRoutes (RouteSettings settings) { //* Generar rutas dinámicas en caso de que alguna ruta no esté configurada
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
  
}