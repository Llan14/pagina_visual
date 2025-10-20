import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Gradiente con tonos azul oscuro y morado, como VS Code
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0E1128), // Azul oscuro casi negro
              Color(0xFF273469), // Azul VSCode
              Color(0xFF3A2D85), // Toque morado sutil
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),

      // Título con tipografía y color similares al logo de VS Code
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.code_rounded,
              color: Color(0xFF22A6F2)), // Azul característico VS Code
          SizedBox(width: 8),
          Text(
            "Visual Studio Clone",
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1.2,
              color: Colors.white,
            ),
          ),
        ],
      ),

      centerTitle: true,
      elevation: 12,
      shadowColor: Colors.blueAccent.withOpacity(0.4),

      // Botón menú a la izquierda
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        tooltip: 'Menú',
        onPressed: () {},
      ),

      // Íconos de acciones (modo oscuro, buscar, configuración)
      actions: [
        IconButton(
          icon: const Icon(Icons.search_rounded, color: Colors.white),
          tooltip: 'Buscar',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.brightness_6_rounded, color: Colors.white),
          tooltip: 'Cambiar tema',
          onPressed: () {},
        ),
        PopupMenuButton<String>(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onSelected: (value) {
            // Acciones del menú
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(value: 'perfil', child: Text('Perfil')),
              const PopupMenuItem(
                  value: 'config', child: Text('Configuración')),
              const PopupMenuItem(value: 'salir', child: Text('Cerrar sesión')),
            ];
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
