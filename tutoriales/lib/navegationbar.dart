import 'package:flutter/material.dart';
import 'package:tutoriales/pages/PaginaHome.dart';
import 'package:tutoriales/pages/PaginaUsers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int _paginaActual = 0;

List<Widget> _paginas = [
  PaginaHome(),
  PaginaUsers(),
];

  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: "Users")
            ],
        ),
      ),
    );
  }
}