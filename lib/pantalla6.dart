import 'package:flutter/material.dart';

class SextaPantalla extends StatelessWidget {
  const SextaPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pantalla 6')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.orangeAccent,
          backgroundColor: Colors.blueGrey,
          value: 0.50,
        ),
      ),
    );
  }
}
