import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void restar() {
    if (contador <= 0) {
      return;
    } else {
      contador--;
    }

    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 176, 189),
      appBar: AppBar(title: Text('Contador'), elevation: 10.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de clics", style: tamano30),
            SizedBox(height: 100, width: 100),
            Text(('$contador'), style: tamano30),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButtom(
        incrementarFn: incrementar,
        restarFn: restar,
        resetFn: reset,
      ),
    ); // Center
  }
}

class CustomFloatingActionButtom extends StatelessWidget {
  final Function incrementarFn;
  final Function restarFn;
  final Function resetFn;

  const CustomFloatingActionButtom({
    super.key,
    required this.incrementarFn,
    required this.restarFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => restarFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.autorenew),
          onPressed: () => resetFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => incrementarFn(),
        ),
      ],
    );
  }
}
