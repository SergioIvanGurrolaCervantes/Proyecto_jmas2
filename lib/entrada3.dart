import 'package:flutter/material.dart';
import 'package:gurrola/pages/paginaHome.dart';

import 'home.dart';

class Entrada3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jmas Juarez',
      theme: ThemeData(
        primaryColor: Color(0xff009B94),
      ),
      home: MyHomePage(title: 'Solicitud de empleo'),
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
            "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/en3.jpg",
          )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Nombre",
                    labelText: "Nombre",
                    prefixIcon: Icon(Icons.tag)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Apellido",
                    labelText: "Apellido",
                    prefixIcon: Icon(Icons.article)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Telefono",
                    labelText: "Telefono",
                    prefixIcon: Icon(Icons.phone)),
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
                    hintText: "Ingrese el local",
                    labelText: "Local",
                    prefixIcon: Icon(Icons.store)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese un segundo telefono",
                    labelText: "Segundo Telefono",
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
        child: const Text('Realizar Accion'),
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
