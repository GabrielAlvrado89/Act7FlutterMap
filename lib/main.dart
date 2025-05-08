import 'package:flutter/material.dart';
import 'package:Alvaradorutas/pagina_uno.dart';
import 'package:Alvaradorutas/change_notifier.dart';
import 'package:Alvaradorutas/constrained_box.dart';
import 'package:Alvaradorutas/cupertino_search_text_field.dart';
import 'package:Alvaradorutas/fractionally_sizedbox.dart';
import 'package:Alvaradorutas/future_builder.dart';
import 'package:Alvaradorutas/layout_builder.dart';
import 'package:Alvaradorutas/orientation_builder.dart';
import 'package:Alvaradorutas/stateful_builder.dart';
import 'package:Alvaradorutas/stream_builder.dart';
import 'package:Alvaradorutas/platform_detect.dart';

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
        '/pantalla8': (context) => const OctavaPantalla(),
        '/pantalla9': (context) => const NovenaPantalla(),
        '/pantalla10': (context) => const DecimaPantalla(),
        '/pantalla11': (context) => const DecimaPrimeraPantalla(),
      },
    );
  }
}
