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
    coleccionProductos = db.collection(COLECCION);
    print('Conectado');
    }

    catch(e) {
      print('ERROR: ${e}');
    }
  } 
}