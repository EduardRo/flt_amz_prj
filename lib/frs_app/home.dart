import 'package:flutter/material.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space exploration planner'),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
          new Expanded(child: ScrollMenu()),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('You must explore the Universe!'),
          LinearProgressIndicator(
            value: 0.0,
          )
        ],
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: 'Load rocket with supplies'),
        TaskItem(label: 'Launch rocket'),
        TaskItem(label: 'Circle the home planet'),
        TaskItem(label: 'Head out to the first moon'),
        TaskItem(label: 'Launch moon lander #1'),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (newValue) => setState(() => _value = newValue),
        ),
        Text(widget.label),
      ],
    );
  }
}

class ScrollMenu extends StatelessWidget {
  const ScrollMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
          child: GridView.builder(
        itemCount: 100,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              'item $index',
            ),
          );
        },
      )),
    );
  }
}
