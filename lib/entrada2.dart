import 'package:flutter/material.dart';
import 'package:gurrola/pages/paginaHome.dart';

import 'home.dart';

class Entrada2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jmas Juarez',
      theme: ThemeData(
        primaryColor: Color(0xff009B94),
      ),
      home: MyHomePage(title: 'Tramite'),
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
            "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/en2.png",
          )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Num.cuenta",
                    labelText: "Numero de cuenta",
                    prefixIcon: Icon(Icons.tag)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Tarifa",
                    labelText: "Tarifa",
                    prefixIcon: Icon(Icons.article)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Giro",
                    labelText: "Giro",
                    prefixIcon: Icon(Icons.refresh)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Periodo",
                    labelText: "Periodo",
                    prefixIcon: Icon(Icons.power_input)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Vencimiento",
                    labelText: "Vencimiento",
                    prefixIcon: Icon(Icons.calendar_today)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Consumo",
                    labelText: "Consumo",
                    prefixIcon: Icon(Icons.all_inclusive)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Total",
                    labelText: "Total",
                    prefixIcon: Icon(Icons.attach_money)),
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
