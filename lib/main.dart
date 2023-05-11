import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gurrola/home.dart';
import 'package:gurrola/entrada1.dart';

import 'entrada2.dart';
import 'entrada3.dart';
import 'entrada4.dart';

void main() {
  runApp(MaterialApp(
      title: 'Named Routes Demo',
      debugShowCheckedModeBanner: false,

      // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
      // en el Widget FirstScreen
      initialRoute: '/one',
      routes: {
        // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
        '/one': (context) => Pantalla1(),
        // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
        '/second': (context) => Entrada1(),
        '/third': (context) => Entrada2(),
        '/fourth': (context) => Entrada3(),
        '/fourth': (context) => Entrada4(),
      }));
}
