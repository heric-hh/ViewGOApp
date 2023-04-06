import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
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
      children: const [
        CustomPainterEscaner(),
        TituloHeaderEscaner(),        
      ],
    );
  }
}

class TituloHeaderEscaner extends StatelessWidget {
  const TituloHeaderEscaner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      width: 300,
      height: 100,
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '¿Qué vas a',
            style: AppTheme.styleTitulos
          ),
          Text(
            ' comprar hoy?',
            style: AppTheme.styleTitulos
          ),
        ],
      ),
    );
  }
}

