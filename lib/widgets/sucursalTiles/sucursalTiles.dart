import 'package:flutter/material.dart';
import 'package:viewgoapp/presentation/screens/home_screen.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class SucursalTiles extends StatelessWidget {
  const SucursalTiles({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const HomeScreen(),)
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: size.width * 0.4,
            height: size.height * 0.25,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: AppTheme.tileBackground
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/img/walmart.jpg')),
                ),
                SizedBox(height: 20),
                Text('Walmart', style: AppTheme.styleDescripcionProdc,)
              ],
            ),
            
          ),
          // image: DecorationImage(image: AssetImage('assets/img/walmart.jpg')),
          
          Container(
            width: size.width * 0.4,
            height: size.height * 0.25,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: AppTheme.tileBackground
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/img/soriana.png')),
                ),
                SizedBox(height: 20),
                Text(' Soriana \nMercado', style: AppTheme.styleDescripcionProdc,)
              ],
            ),
          )
        ],
      ),
    );
  }
}