import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewgoapp/providers/ui_provider.dart';
import 'package:viewgoapp/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'View GO',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.routes,
        
      ),
    );
  }
}