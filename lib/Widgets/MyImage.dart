import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ('assets/images/hola.png'),
      width: 500,
      height: 500,
      fit: BoxFit.fill,
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return Image.asset("Visual_Studio_Code_1.35_icon.svg.png");
      },
    );
  }
}
