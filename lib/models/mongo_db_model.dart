import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:viewgoapp/models/constantes.dart';

class MongoDBModel {
  static var db, coleccionProductos;
  
  static conectar() async {
    try {
    db = await Db.create(MONGO_CONN);
    await db.open();
    inspect(db);
    print('Conectado');
    }

    catch(e) {
      print('ERROR: ${e}');
    }
  } 

  //* Obtener productos de la base de datos

  static Future<List<Map<String, dynamic>>> getProductos() async {
    coleccionProductos = db.collection(COLECCION);
    final consulta = await coleccionProductos.find();
    final listaDeDatos = await consulta.toList();
    return listaDeDatos;
  }

  //* Buscar los datos en la BD en funcion del id
  static Future<Map<String, dynamic>> buscarPorID(idQr) async {
    final productoPorId = await db.collection(COLECCION).findOne(where.eq('id', idQr));
    return productoPorId;
  }

  //* Buscar los datos en la BD dentro del SearchDelegate
  static Future<List<dynamic>> getProductSuggestions(String query) async {
  
  final products = await db.collection(COLECCION).find({
    'description': { '\$regex': query, '\$options': 'i' }
  }).toList();

  print(query);
  // final products = await db.collection(COLECCION).find(where.eq('description', query)).toList();

  print('PRODUCTOSSSSSSSSS: ${products}');
    
 // Transforma los resultados en una lista de sugerencias
  print(products.map((product) => product['description'].toString()).toList());

  return Future.value(products.map((product) => product['description']).toList());
}

}