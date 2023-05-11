import 'package:flutter/material.dart';
import 'package:gurrola/pages/paginaHome.dart';

import 'home.dart';

class Entrada1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jmas Juarez',
      theme: ThemeData(
        primaryColor: Color(0xff009B94),
      ),
      home: MyHomePage(title: 'Cuenta'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        backgroundColor: Color(0xff009B94),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Pantalla1()));
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
              child: Image.network(
            "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/en1.png",
          )),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Ingresar sus datos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "No.cuenta",
                    labelText: "Numero de cuenta",
                    prefixIcon: Icon(Icons.confirmation_num)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su nombre",
                    labelText: "Nombre",
                    prefixIcon: Icon(Icons.person)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su apellido",
                    labelText: "Apellido",
                    prefixIcon: Icon(Icons.person)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su correo",
                    labelText: "Correo",
                    prefixIcon: Icon(Icons.email)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su Domicilio",
                    labelText: "Domicilio",
                    prefixIcon: Icon(Icons.place)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su nacimiento",
                    labelText: "Fecha de nacimiento",
                    prefixIcon: Icon(Icons.all_inclusive)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su telefono",
                    labelText: "Telefono",
                    prefixIcon: Icon(Icons.phone)),
              )),
          Container(
            padding: EdgeInsets.all(20),
            child: const BottomSheetExample(),
          )
        ],
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Realizar tramite'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Fallo al realizar accion'),
                      ElevatedButton(
                        child: const Text('Intentar mas tarde'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
