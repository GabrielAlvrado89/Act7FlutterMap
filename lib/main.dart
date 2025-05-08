import 'package:flutter/material.dart';
import 'package:Alvaradorutas/pagina_uno.dart';
import 'package:Alvaradorutas/pantalla2.dart';
import 'package:Alvaradorutas/pantalla3.dart';
import 'package:Alvaradorutas/pantalla4.dart';
import 'package:Alvaradorutas/pantalla5.dart';
import 'package:Alvaradorutas/pantalla6.dart';
import 'package:Alvaradorutas/pantalla7.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PrimerPantalla(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const SegundaPantalla(),
        '/pantalla3': (context) => const TerceraPantalla(),
        '/pantalla4': (context) => const CuartaPantalla(),
        '/pantalla5': (context) => const QuintaPantalla(),
        '/pantalla6': (context) => const SextaPantalla(),
        '/pantalla7': (context) => const SeptimaPantalla(),
      },
    );
  }
}
