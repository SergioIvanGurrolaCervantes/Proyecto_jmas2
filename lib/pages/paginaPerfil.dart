import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gurrola/entrada1.dart';
import 'package:gurrola/entrada2.dart';
import 'package:gurrola/entrada3.dart';
import 'package:gurrola/entrada4.dart';

class PaginaPerfil extends StatefulWidget {
  PaginaPerfilState createState() => PaginaPerfilState();
}

class PaginaPerfilState extends State<PaginaPerfil> {
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
            title: new Text("Perfil",
                style: const TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 19.0)),
          ),
          body: ListView(
            children: <Widget>[
              Stack(
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.network(
                      "https://cdn.wallpapersafari.com/89/32/r9qHwF.jpg",
                    )
                  ]),
                  Positioned(
                    top: 30,
                    left: 50,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://picsum.photos/id/237/200/300'),
                      radius: 130,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
