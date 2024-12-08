import 'package:flutter/material.dart';


class Page404 extends StatefulWidget{
  const Page404({super.key});

  @override
  State<Page404> createState()=> _HomePageState();
        
}

class _HomePageState extends State<Page404> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 404"),
      ),
    body: const Center(
      child: Text("Page 404"),
  ),
    ); 
  }
}
