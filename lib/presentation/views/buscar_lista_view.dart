import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/custom_painter_buscar_lista.dart';

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
      children: const [
        CustomPainterBuscarLista(),
        TituloHeaderBuscarLista(),
      ],
    );
  }
}

class TituloHeaderBuscarLista extends StatelessWidget {
  const TituloHeaderBuscarLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      padding: const EdgeInsets.only(top: 40),
      width: 300,
      height: 100,
      child: const Text('Buscar Artículo', style: AppTheme.styleTitulos),
    );
  }
}