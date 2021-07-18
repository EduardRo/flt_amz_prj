import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'flutter json list',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Take Json from web page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<MenuList>> _getMenuLists() async {
    var data = await http.get(
        Uri.parse("https://www.matematicon.ro/_teste-grila-json/menu.php"));
    var jsonData = json.decode(data.body);

    List<MenuList> menus = [];
    for (var u in jsonData) {
      MenuList menu = MenuList(u["idtest"], u["codclasa"], u["codmaterie"],
          u["codserie"], u["denumireserie"]);
      menus.add(menu);
    }
    print(menus.length);
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('title'),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getMenuLists(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text('loading...'),
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.red,
                      child: TextButton(
                          onPressed: () => print(snapshot.data[index].idtest),
                          child: Container(
                              color: Colors.red,
                              child: Flexible(
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Flexible(
                                          child: Text(
                                            snapshot.data[index].denumireserie,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          color: Colors.amber,
                                          child: Text(
                                              snapshot.data[index].codclasa)),
                                    ]),
                              ))),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}

class MenuList {
  final String idtest;
  final String codclasa;
  final String codmaterie;
  final String codserie;
  final String denumireserie;

  MenuList(this.idtest, this.codclasa, this.codmaterie, this.codserie,
      this.denumireserie);
}
