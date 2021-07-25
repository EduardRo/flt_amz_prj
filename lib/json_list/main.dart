import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'blab bla',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(child: MyHomePage()),
              Flexible(child: Clasa10()),
              Center(
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  color: Colors.redAccent,
                  child: const Align(
                    alignment: Alignment(2.2, 0.6),
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 120.0,
                  width: 120.0,
                  color: Colors.blue[50],
                  child: Align(
                    alignment: FractionalOffset(0.2, 0.6),
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
              ),
              Flexible(
                  child: Container(
                child: Row(
                  children: [
                    Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.cyan,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                        )),
                    Flexible(
                      flex: 3,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              )),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: [
                      InkWell(
                        onTap: () {
                          print("first tapped");
                        },
                        child: Container(
                          height: 50,
                          color: Colors.amber[600],
                          child: const Center(child: Text('Entry A')),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: Colors.amber[500],
                        child: const Center(child: Text('Entry B')),
                      ),
                      Container(
                        height: 50,
                        color: Colors.amber[100],
                        child: const Center(child: Text('Entry C')),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
    var data = await http.get(Uri.parse(
        "https://www.matematicon.ro/_teste-grila-json/menu_clasa.php?cls=09"));
    var jsonData = json.decode(data.body);

    List<MenuList> menus = [];
    for (var u in jsonData) {
      MenuList menu = MenuList(
          u["codclasa"], u["codmaterie"], u["codserie"], u["denumireserie"]);
      menus.add(menu);
    }
    print(menus.length);
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _getMenuLists(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print(snapshot.data);
          if (snapshot.data == null) {
            return Container(
              child: Text('loading...'),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.red,
                    child: Container(
                        color: Colors.blue,
                        child: Flexible(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    snapshot.data[index].denumireserie,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    snapshot.data[index].codclasa,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                        )),
                  );
                });
          }
        },
      ),
    );
  }
}

class Clasa10 extends StatefulWidget {
  Clasa10({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _Clasa10PageState createState() => new _Clasa10PageState();
}

class _Clasa10PageState extends State<Clasa10> {
  Future<List<MenuList>> _getMenuLists() async {
    var data = await http.get(Uri.parse(
        "https://www.matematicon.ro/_teste-grila-json/menu_clasa.php?cls=10"));
    var jsonData = json.decode(data.body);

    List<MenuList> menus = [];
    for (var u in jsonData) {
      MenuList menu = MenuList(
          u["codclasa"], u["codmaterie"], u["codserie"], u["denumireserie"]);
      menus.add(menu);
    }
    print(menus.length);
    return menus;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        onPressed: () => print(index),
                        child: Container(
                            color: Colors.red,
                            child: Flexible(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        snapshot.data[index].denumireserie,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(snapshot.data[index].codclasa),
                                    Text(snapshot.data[index].codmaterie),
                                  ]),
                            ))),
                  );
                });
          }
        },
      ),
    );
  }
}

class MenuList {
  final String codclasa;
  final String codmaterie;
  final String codserie;
  final String denumireserie;

  MenuList(this.codclasa, this.codmaterie, this.codserie, this.denumireserie);
}
