import 'package:flutter/material.dart';
import 'package:viewgoapp/themes/app_theme.dart';
import 'package:viewgoapp/widgets/widgets.dart';


class BuscarListaView extends StatelessWidget {
   
  const BuscarListaView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //* Tamaño de la pantalla
    final Size size = MediaQuery.of(context).size;
    
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomHeaderProductos(),
              TituloListaProductos(),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              //TODO: Container exterior
              return Container(
                height: size.height * 0.3,
                color: Colors.red,
                //TODO: Row donde contener la imagen y los detalles del producto
                child: Row(
                  children: [
                    //* Container de la imagen del producto
                    ImagenProducto(size: size),
                    
                    //* Container de los detalles del producto 
                    DetallesProductos(size: size)
                  ],
                ),
              );
            },
            childCount: 3
          ),
        ),
      ],
    );
  }
}

//* Widget para mostrar el nombre, precio y categoria del producto

class DetallesProductos extends StatelessWidget {
  const DetallesProductos({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: size.width * 0.45,
        height: size.height * 0.25,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('productos.nombre'),
            Text('productos.precio'),
            Text('productos.cat')

          ],
        ),
      ),
    );
  }
}

//* Widget para la imagen del producto

class ImagenProducto extends StatelessWidget {
  const ImagenProducto({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: size.width * 0.4,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber
      ),
    );
  }
}

//* Widget para mostrar el titulo en la parte superior de la lista de productos populares

class TituloListaProductos extends StatelessWidget {
  const TituloListaProductos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
      child: Text('Productos Populares', style: AppTheme.styleTituloListaProductos, textAlign: TextAlign.right,),
    );
  }
}