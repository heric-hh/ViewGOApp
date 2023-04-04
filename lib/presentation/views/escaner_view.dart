import 'package:flutter/material.dart';
import 'package:viewgoapp/widgets/widgets.dart';

class EscanerView extends StatefulWidget {
  const EscanerView({super.key});

  @override
  State<EscanerView> createState() => _EscanerViewState();
}

class _EscanerViewState extends State<EscanerView> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        customPainterEscaner(),

        //TODO: Titulo dentro del customPainter
        Container(
          margin: EdgeInsets.only(top: 30, left: 20),
          width: 300,
          height: 100,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '¿Qué vas a',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 30, 
                  fontWeight: FontWeight.bold
                ),

              ),
              Text(
                ' comprar hoy?xD',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white

                ), 
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}

