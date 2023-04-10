import 'package:flutter/material.dart';
import 'package:viewgoapp/search/search_delegate.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/custom_painters/custom_painter_buscar_lista.dart';

class CustomHeaderProductos extends StatelessWidget {
  const CustomHeaderProductos({
    Key? key,
  }) : super(key: key);

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
      width: double.infinity,
      height: 100,
      // color: Colors.blue,
      child: Row(
        children: [
          const Text('Buscar Artículo', style: AppTheme.styleTitulos),
          const SizedBox( width: 50 ),
          IconButton(
            onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate()), 
            icon: const Icon(Icons.search, color: Colors.white, size: 30)
          ),
        ],
      ),
    );
  }
}
