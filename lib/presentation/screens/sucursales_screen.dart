import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/sucursalTiles/sucursalTiles.dart';

class SucursalesScreen extends StatelessWidget {
  
   
  const SucursalesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.7,
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Bienvenido a ViewGO', style: AppTheme.bienvenidoBanner),
              Text('Selecciona una tienda para \n buscar algunos articulos', style: AppTheme.instruccionesBanner,),
              SucursalTiles(),
            ],
          ),
        ),
      )
    );
  }
}