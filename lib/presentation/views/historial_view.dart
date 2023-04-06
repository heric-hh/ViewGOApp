import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/widgets.dart';

class HistorialView extends StatelessWidget {
   
  const HistorialView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CustomPainterHistorial(),
        TituloHeaderHistorial(),
      ],
    );
  }
}

class TituloHeaderHistorial extends StatelessWidget {
  const TituloHeaderHistorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      margin: const EdgeInsets.only(top: 30, left: 20),
      padding: const EdgeInsets.only(top: 50),
      width: 300,
      height: 100,
      child: const Text('Historial', style: AppTheme.styleTitulos),
    );
  }
}