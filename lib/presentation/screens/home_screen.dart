import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0; //* Indice de la opcion seleccionada del BottomNavigationBar

  @override
  Widget build(BuildContext context) {

    //TODO: Bottom Navigation

    final colors = Theme.of(context).colorScheme; //* Datos del tema de la aplicacion

    return Scaffold(
      body: Center(
         child: Text('Hola Mundo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;  
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.two_wheeler),
            activeIcon: Icon(Icons.motorcycle),
            label: 'Motors',
            backgroundColor: colors.primary 
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
            label: 'Users',
            backgroundColor: colors.tertiary, 
          ),
        ],
      ),
    );
  }
}