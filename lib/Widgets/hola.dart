import 'package:flutter/material.dart';

class hola extends StatelessWidget {
  const hola({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "me quieres decir hola?",
            style: TextStyle(
                color: const Color.fromARGB(255, 173, 3, 139), fontSize: 30),
            children: [
          TextSpan(
              text: "pues di hola",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'cursive',
                decoration: TextDecoration.underline,
              ))
        ]));
  }
}
