import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/widgets.dart';
import 'package:viewgoapp/search/search_delegate.dart';


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
      width: double.infinity,
      height: 100,
      // color: Colors.blue,
      child: Row(
        children: [
          const Text('Buscar Artículo', style: AppTheme.styleTitulos),
          const SizedBox( width: 80 ),
          IconButton(
            onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate()), 
            icon: const Icon(Icons.search, color: Colors.white, size: 30)
          ),
        ],
      ),
    );

    /**
     * Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      padding: const EdgeInsets.only(top: 50),
      width: 300,
      height: 100,
      child: const Text('Buscar Artículo', style: AppTheme.styleTitulos),
    );
     */
  }
}