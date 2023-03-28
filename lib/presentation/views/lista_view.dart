import 'package:flutter/material.dart';

class ListaView extends StatefulWidget {
  const ListaView({super.key});

  @override
  State<ListaView> createState() => _ListaViewState();
}

class _ListaViewState extends State<ListaView> {

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