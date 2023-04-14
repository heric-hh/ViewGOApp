import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewgoapp/providers/mongo_db_provider.dart';
import 'package:viewgoapp/providers/ui_provider.dart';
import 'package:viewgoapp/router/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDBProvider.conectar();
  runApp(const ViewGO());
}

class ViewGO extends StatelessWidget {
  const ViewGO({super.key});

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