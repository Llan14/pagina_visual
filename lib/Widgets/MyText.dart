import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Bienvendios estudiantes de la universidad",
      style: TextStyle(
        fontSize: 25,
        color: Colors.pink,
        fontWeight: FontWeight.w600,
        letterSpacing: 5,
        wordSpacing: 20,
        backgroundColor: Colors.grey,
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.right,
      softWrap: true,
      maxLines: 2,
    );
  }
}
