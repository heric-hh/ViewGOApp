import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        
      },
      child: const Icon(Icons.qr_code),
      elevation: 0,
    );
  }
}