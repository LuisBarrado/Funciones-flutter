import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:tutoriales/models/gif.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Gif>> _listadoGifs;

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=iIt8iAYiNkY2ggzosNeAt094erv8Vzov&limit=10&offset=0&rating=g&bundle=messaging_non_clips"));

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        gifs.add(
          Gif(item["title"], item["images"]["fixed_height"]["url"]),
        );
      }

      return gifs;
    } else {
      throw Exception("Error de conexión: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FutureBuilder(
          future: _listadoGifs,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.count(
                crossAxisCount: 2,
                children: _listGifs(snapshot.data as List<Gif>),
              );
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Text("Error");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}

List<Widget> _listGifs(List<Gif> data) {
  List<Widget> gifs = [];

  for (var gif in data) {
    gifs.add(Card(child: Column( 
      children: [
        Image.network(gif.url),
      ],
    )));
  }

  return gifs;
}
