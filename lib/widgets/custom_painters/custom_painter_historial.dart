import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class CustomPainterHistorial extends StatelessWidget {
  const CustomPainterHistorial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      // color: Colors.indigo,
      child: CustomPaint(
        painter: HeaderHistorial(),
      ),
    );
  }
}


class HeaderHistorial extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
     final painter = Paint();
    
    //* Propiedades
    painter.color = AppTheme.secondary;
    painter.style = PaintingStyle.fill;
    painter.strokeWidth = 10;

    final path = Path();

    //* Dibujando con el path y el lapiz
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.15, size.height * 0.85, size.width * 0.45, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.55, size.width, size.height * 0.65);
    path.lineTo(size.width, 0);
  
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}