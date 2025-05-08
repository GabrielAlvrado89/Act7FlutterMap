import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuintaPantalla extends StatefulWidget {
  const QuintaPantalla({Key? key}) : super(key: key);

  @override
  State<QuintaPantalla> createState() => _QuintaPantallaState();
}

class _QuintaPantallaState extends State<QuintaPantalla> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    ///
    ///
    debugPrint('The whole page is built');

    return Scaffold(
      appBar: AppBar(title: const Text('StatefulBuilder')),
      body: Center(
        child: StatefulBuilder(
          builder: (context, internalState) {
            /// this `internalState` is only application inside
            /// this bracket
            ///
            debugPrint('StatefulBuilder is built');
            return CupertinoButton(
              onPressed: () {
                internalState(() {
                  counter++;
                });
              },
              child: Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
