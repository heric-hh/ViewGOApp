import 'package:flutter/material.dart';

class EscanerView extends StatefulWidget {
  const EscanerView({super.key});

  @override
  State<EscanerView> createState() => _EscanerViewState();
}

class _EscanerViewState extends State<EscanerView> {

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