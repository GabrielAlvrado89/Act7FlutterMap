import 'package:flutter/material.dart';

class SeptimaPantalla extends StatelessWidget {
  const SeptimaPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pantalla 7')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
          Text('Row 4'),
          Text('Row 5'),
          Text('Flutter Mapp'),
        ],
      ),
    );
  }
}
