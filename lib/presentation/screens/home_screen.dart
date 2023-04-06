import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewgoapp/presentation/views/views.dart';
import 'package:viewgoapp/providers/ui_provider.dart';
import 'package:viewgoapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {
    //* Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt; //* Get para obtener el selectedMenuOpt

    switch (currentIndex) {
      case 0:
        return const BuscarListaView();
      case 1:
        return const HistorialView();
      default:
        return const BuscarListaView();
    }
  }
}