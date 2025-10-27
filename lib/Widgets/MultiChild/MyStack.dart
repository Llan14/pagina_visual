import 'package:flutter/material.dart'; // Importa material.dart que incluye Widget, Stack, Icon, Colors, Image, Positioned

class MyStack extends StatelessWidget {
  // 1. Debe extender StatelessWidget o StatefulWidget
  const MyStack({super.key}); // 2. Constructor constante con key

  @override
  Widget build(BuildContext context) {
    // 3. build(BuildContext context) es la firma correcta
    return Stack(
      alignment: Alignment.centerRight,
      fit: StackFit.expand,
      children: [
        // 4. image.asset debe ser Image.asset
        // 5. Asegúrate de que 'assets/images/hola.jpg' sea una ruta válida en pubspec.yaml
        Image.asset("assets/images/hola.jpg"),

        // 6. Icon y Icons.close (la clase Icons con 's')
        Icon(Icons.close, color: Colors.red, size: 40),

        // 7. Positioned necesita un 'child'. Debes pasarle un widget, no un marcador de posición.
        // Por ejemplo, un Text o un Container.
        // También necesita propiedades de posicionamiento como top, left, right, bottom.
        Positioned(
          top: 20, // Ejemplo: 20 píxeles desde arriba
          right: 20, // Ejemplo: 20 píxeles desde la derecha
          child: Container(
            // Un ejemplo de widget hijo para Positioned
            padding: const EdgeInsets.all(8),
            color: Colors.blue.withOpacity(0.5),
            child: const Text(
              "Elemento Posicionado",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
