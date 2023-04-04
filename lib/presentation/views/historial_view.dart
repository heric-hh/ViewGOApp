import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/custom_painter_historial.dart';

class HistorialView extends StatefulWidget {
  const HistorialView({super.key});

  @override
  State<HistorialView> createState() => _HistorialViewState();
}

class _HistorialViewState extends State<HistorialView> {

  int count = 0;

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
      padding: const EdgeInsets.only(top: 35),
      width: 300,
      height: 100,
      child: const Text('Historial', style: AppTheme.styleTitulos),
    );
  }
}