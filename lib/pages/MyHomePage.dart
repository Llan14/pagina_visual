import 'package:flutter/material.dart';
import 'package:proyect1/Widgets/MyImage.dart'; // <--- ¡Asegúrate de que esta línea esté presente!
import 'package:proyect1/Widgets/Mybuttons.dart';
import 'package:proyect1/Widgets/MyAppBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: MyAppBar(title: widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Myimage(), // Aquí ya no debería dar error si el import está bien y la clase existe.
            const SizedBox(height: 20),
            MyButtons(),
            Text(
              'Contador: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
