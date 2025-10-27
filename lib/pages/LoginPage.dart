import 'package:flutter/material.dart';

// Importa tu AppBar estilo Visual Studio Code
import 'package:proyect1/Widgets/MyAppBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- CORRECCIÓN 1: MyAppBar requiere el parámetro 'title' ---
      appBar:
          const MyAppBar(title: "Iniciar Sesión"), // Le pasamos un título aquí
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0E1128),
                Color(0xFF273469),
                Color(0xFF3A2D85),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          // --- MEJORA: Centrar el botón dentro del Container ---
          child: Center(
            // Agregamos un Center widget para centrar el botón
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NowPlayPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF22A6F2),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 6,
              ),
              child: const Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Página de destino al presionar el botón
class NowPlayPage extends StatelessWidget {
  const NowPlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- CORRECCIÓN 2: MyAppBar requiere el parámetro 'title' ---
      appBar: const MyAppBar(
          title: "Ahora Reproduciendo"), // Le pasamos un título aquí
      body: const Center(
        child: Text(
          "Bienvenido a NowPlayPage 🎵",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF0E1128),
    );
  }
}
