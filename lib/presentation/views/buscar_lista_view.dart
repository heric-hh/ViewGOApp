import 'package:flutter/material.dart';
import 'package:viewgoapp/widgets/widgets.dart';

import '../../themes/app_theme.dart';

class BuscarListaView extends StatelessWidget {
   
  const BuscarListaView({Key? key}) : super(key: key);
  
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
      padding: const EdgeInsets.only(top: 50),
      width: 300,
      height: 100,
      child: const Text('Buscar Artículo', style: AppTheme.styleTitulos),
    );
  }
}