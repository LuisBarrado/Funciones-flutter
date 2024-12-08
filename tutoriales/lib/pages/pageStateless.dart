import 'package:flutter/material.dart';

class Pagestateless extends StatelessWidget {
  final String texto;
  const Pagestateless(this.texto,{key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Page"),),
      body: Center(
        child: Text(texto),
        ),
    );
    
  }
}

