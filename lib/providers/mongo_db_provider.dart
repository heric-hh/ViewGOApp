import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:viewgoapp/providers/constantes.dart';

class MongoDBProvider {
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

  static Future<List<Map<String, dynamic>>> getProductos() async {
    coleccionProductos = db.collection(COLECCION);
    final consulta = await coleccionProductos.find();
    final listaDeDatos = await consulta.toList();
    return listaDeDatos;
  }
}