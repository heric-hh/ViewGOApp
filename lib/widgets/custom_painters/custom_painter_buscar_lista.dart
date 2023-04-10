import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class CustomPainterBuscarLista extends StatelessWidget {
  const CustomPainterBuscarLista({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      // child: Container(color: Colors.blue),
      child: CustomPaint(painter: HeaderBuscarLista()),
    );
  }
}

class HeaderBuscarLista extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint();

    //* Propiedades
    painter.color = AppTheme.terciary;
    painter.style = PaintingStyle.fill;
    // painter.strokeWidth = 10;

    //* Dibujando con el lápiz y el path
    final path = Path();

    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.95, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    
    //* Dibujando en el canvas
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}