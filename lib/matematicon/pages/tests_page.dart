import 'package:flutter/material.dart';

class TestsPage extends StatelessWidget {
  const TestsPage({Key? key, required this.clasa}) : super(key: key);
  final String clasa;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Tests'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Text(this.clasa),
      );
}
