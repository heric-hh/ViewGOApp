import 'package:flutter/material.dart';

class DetalleProductosScreen extends StatelessWidget {
  final String descripcion, costo, categoria, imagen;

  const DetalleProductosScreen({super.key, required this.descripcion, required this.costo, required this.categoria, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(descripcion),
            Text(costo),
            Text(categoria),
            Image(image: NetworkImage(imagen))
          ],
        ),
      ),
    );
  }
}