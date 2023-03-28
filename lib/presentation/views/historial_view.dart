import 'package:flutter/material.dart';

class HistorialView extends StatefulWidget {
  const HistorialView({super.key});

  @override
  State<HistorialView> createState() => _HistorialViewState();
}

class _HistorialViewState extends State<HistorialView> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lista de objetos: $count'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              }, 
              child: null
            )
          ],
        ),
      ),
    );
  }
}