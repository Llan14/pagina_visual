import 'package:flutter/material.dart';
// 1. Importa tu nuevo AppBar (ajusta la ruta si está en otro lugar)
import 'package:proyect1/Widgets/MyAppBar.dart';

class MyImagePage extends StatelessWidget {
  const MyImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 2. Usa tu widget personalizado aquí en lugar del AppBar por defecto
      appBar: const MyAppBar(), // <-- ¡Aquí lo insertas!

      body: Center(
        child: Image.asset(
          'assets/images/hola.png',
          width: 500,
          height: 500,
          fit: BoxFit.fill,
          errorBuilder:
              (BuildContext context, Object error, StackTrace? stackTrace) {
            return const Text('Error al cargar la imagen principal');
          },
        ),
      ),
    );
  }
}
