import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3D88EF', 'Cancelar', false, ScanMode.QR);
      },
      backgroundColor: AppTheme.primary,
      elevation: 0,
      child: const Icon(Icons.qr_code),
    );
  }
}