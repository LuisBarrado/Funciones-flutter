import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 50000000);

 Empresa _google = new Empresa("Google", "Larry Page", 80000000);
  @override
  void initState() {
    super.initState();


    print("El nombre de la empresa es: ${_facebook.nombre}");
    print("El propietario es: ${_facebook.propietario}");
    print("El ingreso anual es: \$${_facebook.ingresoAnual}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clases",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clases"),
        ),
        body: Center(
          child: Text(
            _google.propietario,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class Empresa {
  String nombre;
  String propietario;
  int ingresoAnual;

  
  Empresa(this.nombre, this.propietario, this.ingresoAnual);
}
