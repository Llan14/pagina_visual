import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {
  const Respuesta({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "grosero :b",
      style: TextStyle(
        fontSize: 15,
        color: Colors.red,
        fontWeight: FontWeight.w600,
        backgroundColor: Colors.white,
        decoration: TextDecoration.underline,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.end,
    );
  }
}
