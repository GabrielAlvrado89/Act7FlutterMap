import 'package:flutter/material.dart';

class PrimerPantalla extends StatelessWidget {
  const PrimerPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Primer Pantalla",
          style: TextStyle(
            color: Colors.white, // Establece el color de la letra a blanco
            fontSize: 25.0, // Establece el tamaño de la letra a 15
          ),
        ),
        backgroundColor: Color(0xff2555a8),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Segunda Pantalla'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Tercer Pantalla'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Cuarta Pantalla'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Quinta Pantalla'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Sexta Pantalla'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Septima Pantalla'),
            ),
          ),
        ],
      ),
    );
  }
}
