import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/custom_painter_buscar_lista.dart';
import 'package:viewgoapp/widgets/widgets.dart';

class BuscarListaView extends StatefulWidget {
  const BuscarListaView({super.key});

  @override
  State<BuscarListaView> createState() => _BuscarListaViewState();
}

class _BuscarListaViewState extends State<BuscarListaView> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      //TODO: Incluir el customPainter para la view de BuscarLista
      children: [
        customPainterBuscarLista(),
        
      ],
    );
  }
}