import 'package:flutter/material.dart';

class QuintaPantalla extends StatelessWidget {
  const QuintaPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pantalla 5')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
