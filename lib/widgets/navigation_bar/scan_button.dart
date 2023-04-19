import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:viewgoapp/models/constantes.dart';
import 'package:viewgoapp/presentation/screens/detalles_producto_screen.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final db = await Db.create(MONGO_CONN);
        await db.open();
        print('ESPERANDO RESULTADOS DEL QR: ');
        final barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3D88EF', 'Cancelar', false, ScanMode.QR);
        final productoPorId = await db.collection(COLECCION).findOne(where.eq('idProducto', barcodeScanRes));
        print('RESULTADOS ${productoPorId}');

        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetalleProductosScreen(
              descripcion: productoPorId?['description'], 
              costo: productoPorId?['cost'], 
              categoria: productoPorId?['category'], 
              imagen: productoPorId?['image']),
            )
        );
        
      },
      backgroundColor: AppTheme.primary,
      elevation: 0,
      child: const Icon(Icons.qr_code),
    );
  }
}