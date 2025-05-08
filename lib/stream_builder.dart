import 'package:flutter/material.dart';

class DecimaPantalla extends StatefulWidget {
  const DecimaPantalla({Key? key}) : super(key: key);

  @override
  State<DecimaPantalla> createState() => _DecimaPantallaState();
}

// FAKE FIREBASE STREAM
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 4;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 5;
})();

class _DecimaPantallaState extends State<DecimaPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamBuilder')),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 40),
              );
            }
          },
        ),
      ),
    );
  }
}
