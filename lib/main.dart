import 'package:flutter/material.dart';
import 'package:viewgoapp/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'View GO',
      // theme: ThemeData(fontFamily: 'Lexend'),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      
    );
  }
}