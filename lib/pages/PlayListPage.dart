import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyect1/pages/LoginPage.dart'; // Asegúrate que esta ruta sea correcta
import 'package:proyect1/pages/NowPlayPage.dart'; // Asegúrate que esta ruta sea correcta

// Clase principal (StatefulWidget)
class PlayListPage extends StatefulWidget {
  const PlayListPage({super.key}); // Agregamos key

  @override
  // Corrección 1: createState()
  State<PlayListPage> createState() => _PlayListPageState();
}

// Clase de Estado
class _PlayListPageState extends State<PlayListPage> {
  // Usamos guion bajo para el nombre privado
  @override
  // Corrección 2: build()
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(
        // Corrección 3: Sintaxis de onPressed
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const NowPlayPage()) // Agregamos 'const'
              );
        },
        child: const Text('playlist page'), // Agregamos 'const'
      )),
    );
  }
} // Corrección 4: Se eliminó la llave de cierre extra
