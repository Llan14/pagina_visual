import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myElevatedButton1();
  }

  myElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(190, 26, 221, 26),
        foregroundColor: Color.fromARGB(181, 28, 72, 192),
        shadowColor: Color.fromARGB(241, 200, 9, 9),
        elevation: 20,
      ),
      onLongPress: () {
        print("ElevatedButton onLongPress");
      },
      onPressed: () {
        print("ElevatedButton");
      },
      child: Text("Guardar"),
    );
  }

  myElevatedButton1() {
    return ElevatedButton.icon(
      icon: Icon(Icons.save, color: Color(34)),
      label: Text("Guardar"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(189, 29, 122, 29),
        foregroundColor: Color.fromARGB(181, 148, 207, 38),
        shadowColor: Color.fromARGB(240, 189, 82, 82),
        elevation: 10,
      ),
      onLongPress: () {
        print("ElevatedButton onLongPress");
      },
      onPressed: () {
        print("ElevatedButton");
      },
    );
  }

  MyTextButton() {
    return TextButton(
      onPressed: () {
        print("TextButton");
      },
      child: Text("Guardado"),
    );
  }

  myOutlineButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.black38, width: 3),
          backgroundColor: Color(3),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
      onLongPress: () {
        print("ElevatedButton onLongPress");
      },
      onPressed: () {
        print("ElevatedButton");
      },
      child: null,
    );
  }
}
