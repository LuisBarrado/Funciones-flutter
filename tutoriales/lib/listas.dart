import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
    _MyappState createState() => _MyappState();
}

class _MyappState extends State<MyApp>{

  List <Persona> _personas = [ 
    Persona("Jose", "Gutierrez", "+34 678 543 678"),
    Persona("Pep", "Maldonado", "+34 687 443 123"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder( itemCount: 
          _personas.length,
          itemBuilder: (context, index){
          return ListTile(
            onLongPress: () {
              this._borrarPersona(context, _personas[index]);
            },
            title: Text(_personas[index].name + ' ' + _personas[index].lastname),
            subtitle: Text(_personas[index].phone),
            leading: CircleAvatar(
              child: Text(_personas[index].name.substring(0,1)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
          }
          ) 
        ),
    );
  }

  _borrarPersona(context, Persona persona){
    showDialog(
      context: context, 
      builder: (_) => AlertDialog(
        title: Text("Eliminar Contacto"),
        content: Text("¿Está seguro de querer eliminar a" + persona.name + "?"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancelar")),
          ElevatedButton(onPressed: (){
            print(persona.name);
            this.setState(() {
              this._personas.remove(persona);
            });
            Navigator.pop(context); 
          }, child: Text("Borrar", style: TextStyle(color: Colors.red),),
          )
        ],
      )
      );
  }
}


class Persona{
  String name;
  String lastname;
  String phone;

  Persona(this.name,this.lastname,this.phone);
}