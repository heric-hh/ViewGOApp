import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class MovieSearchDelegate extends SearchDelegate{
  @override
  String? get searchFieldLabel => 'Buscar Artículo';

  @override
  TextStyle? get searchFieldStyle => AppTheme.styleSearchDelegateLabel;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      //TODO: Cambiar estilo del icono
      IconButton(onPressed: () => query = '', icon: const Icon(Icons.clear_rounded, color: AppTheme.secondary,))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      close(context, null);
      //TODO: Cambiar estilo del icono
    }, icon: const Icon(Icons.arrow_back, color: AppTheme.arrowBackColor,));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/cartera.png', width: 150,),
            const SizedBox(height: 20),
            const Text('¡Ups!', style: AppTheme.styleTextImageAsset),
            const Text('Parece que no hay resultados', style: AppTheme.styleSubTextImageAsset,)
          ],
        ) 
        
        //Image.asset('assets/img/cartera.png', width: 150,),
      );
    }

    return Container();
  }

}