import 'package:flutter/material.dart';
import 'package:tutoriales/pages/otra_page.dart';


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState()=> _HomePageState();
        
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
    body: Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(context, "/otra");
        },child:const Text("Ir a otra página")),
  ),
    ); 
  }
}
