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

    //TODO: Bottom Navigation

    final colors = Theme.of(context).colorScheme; //* Datos del tema de la aplicacion

    final screens = [const ListaView(), const EscanerView(), const HistorialView()];

    return Scaffold(
      body: IndexedStack(children: screens, index: selectedIndex,),

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
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list_sharp),
            label: 'Buscar',
            backgroundColor: AppTheme.terciary 
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.qr_code_scanner_outlined),
            activeIcon: const Icon(Icons.qr_code_2_sharp),
            label: 'Escanear',
            backgroundColor: AppTheme.primary, 
          ),

          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            activeIcon: const Icon(Icons.history_rounded),
            label: 'Historial',
            backgroundColor: AppTheme.secondary, 
          ),
        ],
      ),
    );
  }
}