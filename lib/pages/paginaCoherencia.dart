import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gurrola/entrada1.dart';
import 'package:gurrola/entrada2.dart';
import 'package:gurrola/entrada3.dart';
import 'package:gurrola/entrada4.dart';

class PaginaCoherencia extends StatefulWidget {
  PaginaCoherenciaState createState() => PaginaCoherenciaState();
}

class PaginaCoherenciaState extends State<PaginaCoherencia> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jmas Juarez',
        theme: ThemeData(
          primaryColor: Color(0xff009B94),
        ),
        home: Scaffold(
          backgroundColor: Color(0xffC2FFFC),
          drawer: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: Container(
            color: Colors.white,
            child: ListView(
              // Important: Remove any padding from the ListView.
              //padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("josephuwu"),
                  accountEmail: Text("Joseph@7u7.com"),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: Text(
                        "J",
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Ink(
                  child: ListTile(
                    title: const Text('Inicio de sesion'),
                    leading: const Icon(Icons.person),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Entrada1()));
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Tramite'),
                  leading: const Icon(Icons.content_paste),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Entrada2()));
                  },
                ),
                ListTile(
                  title: const Text('Solicitud de empleo'),
                  leading: const Icon(Icons.account_box_rounded),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Entrada3()));
                  },
                ),
                ListTile(
                  title: const Text('Local'),
                  leading: const Icon(Icons.water_damage),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Entrada4()));
                  },
                ),
                ListTile(
                  title: const Text('En construccion'),
                  leading: const Icon(Icons.fingerprint),
                ),
              ],
            ),
          )),
          appBar: new AppBar(
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Color(0xff009B94),
            title: new Text("Notas",
                style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 19.0)),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            children: [
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://www.iagua.es/sites/default/files/agua_28.jpg"),
                    Text("El agua", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota2.jpg"),
                    Text("A2 Rencuentro", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota3.jpg"),
                    Text("A3 Origen", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota4.jpg"),
                    Text("Bebe agua", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota5.jpg"),
                    Text("Agua word", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/bbb.jpg"),
                    const Text("Oceano", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota7.jpg"),
                    Text("ConsumoAgua", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota8.jpg"),
                    Text("Gota Agua", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/notaa9.jpg"),
                    Text("Nutrientes deA",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota10.jpg"),
                    Text("A4 Resureccion",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/buu.jpg"),
                    Text("100tifikos yA", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota12.jpg"),
                    Text("Quimica yA", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota13.jpg"),
                    Text("Calentamiento A",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota14.jpg"),
                    Text("Water 5", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota15.jpg"),
                    Text("Mundo Agua", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota16.jpg"),
                    Text("Escazes", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota17.jpg"),
                    Text("Higiene", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                color: Color(0xff4ca8af),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/nota18.jpg"),
                    Text("H2O Remake", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ],
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ));
  }
}
