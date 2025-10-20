import 'package:flutter/material.dart';

class Myicon extends StatelessWidget {
  const Myicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.pets,
      color: Colors.red,
      size: 50,
    );
  }
}
