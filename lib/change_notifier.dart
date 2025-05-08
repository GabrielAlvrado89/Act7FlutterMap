import 'package:flutter/material.dart';
import 'controller.dart';

class DecimaPrimeraPantalla extends StatefulWidget {
  const DecimaPrimeraPantalla({Key? key}) : super(key: key);

  @override
  State<DecimaPrimeraPantalla> createState() => _DecimaPrimeraPantallaState();
}

class _DecimaPrimeraPantallaState extends State<DecimaPrimeraPantalla> {
  final controller = CNController();

  int get _counter => controller.counter;

  @override
  void initState() {
    debugPrint('initState executed once');
    super.initState();
    controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build executed once');
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Incrementing & Decrementing\nusing\nChange Notifier',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              '$_counter',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => controller.decrement(),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () => controller.increment(),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
