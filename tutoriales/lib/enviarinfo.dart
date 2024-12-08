import 'package:flutter/material.dart';
import 'package:tutoriales/pages/pageStatefull.dart';
import 'package:tutoriales/pages/pageStateless.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material app',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    TextEditingController _textoController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text("Material app bar"),
      ),
      body: Column(
        children: [
          Container(padding:EdgeInsets.all(20),
          child: TextField(
            controller: _textoController,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.grey[300],
              filled: true,
              hintText: "Ingresa Información"
            ),
          )),
          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => 
            Pagestateless(_textoController.text)));
          }, child: Text("Enviar a Stateless"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => 
            Pagestatefull(_textoController.text)));
          }, child: Text("Enviar a Statefull"),
          ),
        ],
      ),
    );
  }
}