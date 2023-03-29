import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';

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
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          // color: Colors.indigo,
          child: CustomPaint(
            painter: _HeaderEscaner(),
          ),
        )
      ],
    );
  }
}

class _HeaderEscaner extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint();
    
    //* Propiedades
    painter.color = AppTheme.primary;
    painter.style = PaintingStyle.fill;
    painter.strokeWidth = 10;

    final path = Path();

    //* Dibujando con el path y el lapiz
    path.lineTo(0, size.height * 0.20);
    // path.lineTo(size.width * 0.5, size.height * 0.23);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.2, size.width * 0.45, size.height * 0.23);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.28, size.width, size.height * 0.25);
    //path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}