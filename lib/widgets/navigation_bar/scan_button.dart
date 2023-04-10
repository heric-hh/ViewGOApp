import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        
      },
      backgroundColor: AppTheme.primary,
      elevation: 0,
      child: const Icon(Icons.qr_code),
    );
  }
}