import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:viewgoapp/models/constantes.dart';
import 'package:viewgoapp/models/mongo_db_model.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class MovieSearchDelegate extends SearchDelegate{
  final db = Db.create(MONGO_CONN);
  late List<Map<String, dynamic>> _data;

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

    return FutureBuilder<List<dynamic>>(
    future: MongoDBModel.getProductSuggestions(query),
    builder: (context, snapshot) {
      print(' SNAPSHOOOOT: ${snapshot}');
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator());
      }
      
      final suggestions = snapshot.data!;
      print('DATOOOOOOOOOOOOS: ${suggestions}');
      
      return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          print('SUGGESTION INDEX:');
          print(suggestions[index]);
          return ListTile(
            title: Text(suggestions[index]),
            onTap: () {
              // Maneja la selección del usuario
            },
          );
        },
      );
    },
  );
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