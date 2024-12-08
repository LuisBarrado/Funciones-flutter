import 'package:flutter/material.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/012/986/755/small_2x/abstract-circle-logo-icon-free-png.png"),
                ),
                Text("Papilu00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.green[100],
                  child: Text("Inicio"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.lightGreen[100],
                  child: Text("Opciones"),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.greenAccent[100],
                  alignment: Alignment.center,
                  child: Text("Salir"),
                )
              ],
            ),
          ),
        ),
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: Center(
        child: Text("Hola mundo"),
      ),
      ),
    );
  }
}