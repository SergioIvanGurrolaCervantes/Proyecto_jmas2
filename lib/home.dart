import 'package:flutter/material.dart';
import 'package:gurrola/pages/paginaCoherencia.dart';
import 'package:gurrola/pages/paginaConsulta.dart';
import 'package:gurrola/pages/paginaHome.dart';
import 'package:gurrola/pages/paginaPerfil.dart';
import 'package:gurrola/pages/paginaUs.dart';

class Pantalla1 extends StatefulWidget {
  const Pantalla1({super.key});

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    PaginaHome(),
    PaginaUs(),
    PaginaConsulta(),
    PaginaPerfil(),
    PaginaCoherencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jmas Juarez',
        theme: ThemeData(
          primaryColor: Color(0xff009B94),
        ),
        home: Scaffold(
          body: _paginas[_paginaActual],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xffB810534C),
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Casa",
                backgroundColor: Color(0xff30ded5),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined),
                label: "Us",
                backgroundColor: Color(0xff30ded5),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.content_paste),
                label: "Consulta",
                backgroundColor: Color(0xff30ded5),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Perfil",
                backgroundColor: Color(0xff30ded5),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.gesture),
                label: "coherencia",
                backgroundColor: Color(0xff30ded5),
              ),
            ],
          ),
        )
        // A widget which will be started on application startup
        );
  }
}
