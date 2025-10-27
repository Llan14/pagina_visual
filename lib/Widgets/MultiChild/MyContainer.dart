import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue, // NOTA: No puedes tener 'color' aquí y 'decoration: BoxDecoration(color: ...)' al mismo tiempo.
      // La propiedad 'color' es un atajo para un BoxDecoration simple.
      // Si usas 'decoration', el color debe ir dentro de BoxDecoration.
      // Mantendré el color del decoration y eliminaré este para evitar conflicto.

      width: 200, // Aumentado para que el texto sea visible
      height: 200, // Aumentado para que el texto sea visible
      alignment: Alignment.center,
      margin:
          const EdgeInsets.symmetric(vertical: 30), // Añadida 'const' y la coma
      padding: const EdgeInsets.only(top: 60), // Añadida 'const' y la coma
      child: const Text(
        // Añadida 'const'
        "hola mundo",
        style: TextStyle(
            color: Colors.white, fontSize: 20), // Para que el texto sea visible
      ),
      decoration: BoxDecoration(
        color: Colors
            .green, // Corrección: Usar Colors.green en lugar de Color.green
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50)), // Añadida 'const'
      ),
    );
  }
}
