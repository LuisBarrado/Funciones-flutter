import 'package:flutter/material.dart';
import 'package:tutoriales/pages/404_page.dart';
import 'package:tutoriales/pages/home_page.dart';
import 'package:tutoriales/pages/login_page.dart';
import 'package:tutoriales/pages/otra_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

final _routes = {

        '/':(context) => const LoginPage(),
        '/home':(context) => const HomePage(),
        '/otra':(context) => const OtraPage()
      }; 

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Page404(),
        );
      },
    );
  }
}

