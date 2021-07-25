import 'package:flutter/material.dart';

class ClassMenu extends StatelessWidget {
  const ClassMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(children: [
            Container(
              child: Text('CLASA a IX-a'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    TextButton(onPressed: () => {}, child: Text('CLASA a X-a')),
              ),
            ),
            Text('CLASA a XI-a'),
            Text('CLASA a XII-a')
          ]),
        ),
      ),
    );
  }
}
