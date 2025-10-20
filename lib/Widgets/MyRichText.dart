import 'package:flutter/material.dart';
import 'package:proyect1/widgets/myicon.dart';

class MyRichtext extends StatelessWidget {
  const MyRichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Myicon(),
        RichText(
          text: TextSpan(
            text: "tienes una cuenta?",
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: [
              TextSpan(
                text: "Iniciar sesion",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
