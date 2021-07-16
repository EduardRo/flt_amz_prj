import 'package:flutter/material.dart';

void main() {
  runApp(BuildExp1());
}

class BuildExp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exp Demo',
      debugShowCheckedModeBanner: false,
      home: BuildScafforlWidget(),
    );
  }
}

class BuildScafforlWidget extends StatelessWidget {
  const BuildScafforlWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is a demo page',
        ),
      ),
      body: Container(),

      // this is making the bar down
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
