import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewgoapp/providers/ui_provider.dart';
import 'package:viewgoapp/themes/app_theme.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      //* Opciones seleccionadas
      selectedLabelStyle: AppTheme.styleLabel,
      selectedItemColor: AppTheme.secondary,

      //* Opciones sin seleccionar
      unselectedLabelStyle: AppTheme.styleLabelUnselected,


      onTap: (indice) => uiProvider.selectedMenuOpt = indice, //* Seteando el valor de selectedOpt dependiendo del indice del bottom
      elevation: 0,
      // type: BottomNavigationBarType.shifting,
      currentIndex: currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: 'Productos',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Historial'
        ),
      ]
    );
  }
}