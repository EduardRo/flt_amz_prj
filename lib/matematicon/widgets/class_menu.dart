import 'package:flutter/material.dart';
import 'package:flt_amz_prj/matematicon/pages/tests_page.dart';

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
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TestsPage(clasa: 'clasa09')),
                      );
                    },
                    child: Text('CLASA a IX-a')),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TestsPage(clasa: 'clasa10')),
                      );
                    },
                    child: Text('CLASA a X-a')),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TestsPage(clasa: 'clasa11')),
                      );
                    },
                    child: Text('CLASA a XI-a')),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TestsPage(clasa: 'clasa12')),
                      );
                    },
                    child: Text('CLASA a XII-a')),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
