import 'package:flutter/material.dart';
import 'package:gurrola/pages/paginaHome.dart';

import 'home.dart';

class Entrada4 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jmas Juarez',
      theme: ThemeData(
        primaryColor: Color(0xff009B94),
      ),
      home: MyHomePage(title: 'Oficina del Gobierno del Distrito'),
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
            "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/en4.jpg",
          )),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Junta Municipal De Agua Y Saneamiento',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ),
          Container(
            child: ListTile(
              title: const Text(
                  'Blvd. Zaragoza y Sonora 1267, Salvarcar, 32573 Cd Juárez, Chih.'),
              leading: const Icon(Icons.place),
            ),
          ),
          Container(
            child: ListTile(
              title: const Text('Reloj. Cierra a las 15:30'),
              leading: const Icon(Icons.watch),
            ),
          ),
          Container(
            child: ListTile(
              title: const Text('http://www.jmasjuarez.gob.mx/'),
              leading: const Icon(Icons.web_sharp),
            ),
          ),
          Container(
            child: ListTile(
              title: const Text('Telefono +526566860050'),
              leading: const Icon(Icons.phone),
            ),
          ),
          Container(
            child: ListTile(
              title: const Text('Telefono segundo +526566860050'),
              leading: const Icon(Icons.phone),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: const BottomSheetExample(),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Escriba su Opinion",
                    labelText: "Opinion",
                    prefixIcon: Icon(Icons.star)),
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Escriba su Segunda Opinion",
                    labelText: "Opinion",
                    prefixIcon: Icon(Icons.star)),
              ))
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
        child: const Text('Fotos'),
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
                      const Text('No hay fotos'),
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
