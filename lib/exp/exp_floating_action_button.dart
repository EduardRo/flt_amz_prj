import 'package:flutter/material.dart';

void main() {
  runApp(BuildExp1());
}

class BuildExp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exp Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exp Demo'),
        ),
        body: Container(),
        // this is making the bar down
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.amber,
                ),
                label: "Settings")
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
