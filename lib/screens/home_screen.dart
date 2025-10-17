import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 176, 189),
      appBar: AppBar(title: Text('HomeScreen'), elevation: 10.0),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hola mundo este es el home 1"),
            SizedBox(height: 100, width: 100),
            Text("Hola mundo este es el home 2"),
          ],
        ),
      ),
    ); // Center
  }
}
