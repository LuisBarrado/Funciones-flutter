import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState()=> _HomePageState();
        
}

class _HomePageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          // Navigator.pushNamed(context, "/home");
          Navigator.pushReplacementNamed(context, "/home");
        },
        child: const Text("Acceder"),)
  ),
    ); 
  }
}
