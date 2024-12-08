import 'package:flutter/material.dart';
import 'package:tutoriales/pages/tabs/bike.dart';
import 'package:tutoriales/pages/tabs/car.dart';
import 'package:tutoriales/pages/tabs/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff25D366),
            title: const Text("Tabs Navigation"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.verified_user),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ]),
        ),
        body: const TabBarView(children: [Car(),User(),Bike()]),
      ),
    );
  }
}