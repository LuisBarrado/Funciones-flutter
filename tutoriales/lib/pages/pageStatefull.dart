import 'package:flutter/material.dart';


class Pagestatefull extends StatefulWidget {

  final String texto;
  Pagestatefull(this.texto,{key}) : super(key: key);

  @override
  _PagestatefullState createState() => _PagestatefullState();
}

class _PagestatefullState extends State<Pagestatefull>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
        ),
      body: Center(
        child: Text(widget.texto),
        ),
      );
  }
}