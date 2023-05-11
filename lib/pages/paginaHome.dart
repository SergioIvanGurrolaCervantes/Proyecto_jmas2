import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gurrola/entrada1.dart';
import 'package:gurrola/entrada2.dart';
import 'package:gurrola/entrada3.dart';
import 'package:gurrola/entrada4.dart';

class PaginaHome extends StatefulWidget {
  PaginaHomeState createState() => PaginaHomeState();
}

class PaginaHomeState extends State<PaginaHome> {
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
            title: new Text("Jmas",
                style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 19.0)),
          ),
          body: ListView(
            padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 200,
                    color: Colors.white,
                  ),
                  Positioned(
                      top: 30,
                      left: 30,
                      child: const Text("Jmas",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w800,
                              fontFamily: "Lora",
                              fontStyle: FontStyle.normal,
                              fontSize: 50.0))),
                  new Positioned(
                      top: 80,
                      left: 90,
                      child: const Text("Juarez",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Lora",
                              fontStyle: FontStyle.normal,
                              fontSize: 35.0))),
                  new Positioned(
                      top: 25,
                      left: 210,
                      width: 90,
                      height: 120,
                      child: Image.network(
                        "https://elpuntero.com.mx/inicio/wp-content/uploads/2020/03/jmasjuarez_activo.png",
                      )),
                  //new Positioned(
                  //top: 100,
                  //left: 30,
                  //child: TextField(
                  //decoration: InputDecoration(
                  //hintText: "Buscar...",
                  //prefixIcon: Icon(Icons.search)),
                  //)),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0),
                  margin: EdgeInsets.only(top: 30.0),
                  width: 350,
                  height: 200,
                  color: Colors.white,
                  child: Image.network(
                    "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/2casa.png",
                  )),
              Container(
                height: 60,
                color: Color(0xffffffff),
                child: Text(
                    'LLa J+ realizará la conexión a la Red General de Agua Potable de un supermercado, el viernes 28 de abril de 9:00 am a 4:00 pm.'),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0),
                  margin: EdgeInsets.only(top: 30.0),
                  width: 350,
                  height: 200,
                  color: Colors.white,
                  child: Image.network(
                    "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/3casa.jpg",
                  )),
              Container(
                height: 80,
                color: Color(0xffffffff),
                child: Text(
                    'Con la campaña “Cero Desperdicio” que encabeza la J+, se busca generar conciencia en personal administrativo, operativo y estudiantes de nivel básico en el consumo del agua,'),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 50),
                  margin: EdgeInsets.only(top: 30.0),
                  width: 350,
                  height: 200,
                  color: Colors.white,
                  child: Image.network(
                    "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/4casa.png",
                  )),
              Container(
                height: 80,
                color: Color(0xffffffff),
                margin: EdgeInsets.only(bottom: 30.0),
                child: Text(
                    'Con la finalidad de brindar un mejor servicio a residentes del poniente de la ciudad, la J+ realizó la reposición de líneas de alimentación y conducción del tanque Felipe Ángeles.'),
              ),
            ],
          ),
        ));
  }
}
