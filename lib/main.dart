import 'package:flutter/material.dart';
// ¡IMPORTANTE! Asegúrate que la ruta sea correcta
// Usamos el nombre del proyecto de tu GitHub ('pagina_visual') si tu carpeta es 'pagina_visual'
// Si tu proyecto sigue llamándose 'proyect1' localmente, usa ese nombre.
// Por ahora, usamos 'proyect1' como en tu código original, pero importamos el nuevo archivo:
import 'package:proyect1/pages/my_image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Página de Visual',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // 1. Ahora usamos tu nueva página como la principal (home)
      home: const MyImagePage(),
    );
  }
}
