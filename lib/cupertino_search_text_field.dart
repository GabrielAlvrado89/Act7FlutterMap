import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TerceraPantalla extends StatefulWidget {
  const TerceraPantalla({Key? key}) : super(key: key);

  @override
  State<TerceraPantalla> createState() => _TerceraPantallaState();
}

class _TerceraPantallaState extends State<TerceraPantalla> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Search Text Field'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 8.0, left: 8.0),
            child: CupertinoSearchTextField(
              placeholder: 'Search is on',
              controller: _textController,
            ),
          ),
        ],
      ),
    );
  }
}
