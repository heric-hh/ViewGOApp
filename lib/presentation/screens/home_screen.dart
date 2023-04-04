import 'package:flutter/material.dart';
import 'package:viewgoapp/presentation/views/views.dart';
import 'package:viewgoapp/themes/app_theme.dart';


class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0; //* Indice de la opcion seleccionada del BottomNavigationBar

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; //* Datos del tema de la aplicacion

    final screens = [const EscanerView(), const BuscarListaView(), const HistorialView()];

    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screens,),

      //* Barra de navegacion

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (selection) {
          setState(() {
            selectedIndex = selection;  
          });
        },
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            activeIcon: Icon(Icons.qr_code_2_sharp),
            label: 'Escanear',
            backgroundColor: AppTheme.primary, 
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list_sharp),
            label: 'Buscar',
            backgroundColor: AppTheme.terciary 
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            activeIcon: Icon(Icons.history_rounded),
            label: 'Historial',
            backgroundColor: AppTheme.secondary, 
          ),
        ],
      ),
    );
  }
}