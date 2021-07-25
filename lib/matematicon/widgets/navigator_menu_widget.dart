import 'package:flutter/material.dart';
import 'package:flt_amz_prj/matematicon/pages/theory_page.dart';
import 'package:flt_amz_prj/matematicon/pages/results_page.dart';
import 'package:flt_amz_prj/matematicon/pages/settings_page.dart';

import 'package:flt_amz_prj/matematicon/main.dart';

Widget buildMenuItem({
  required String text,
  required IconData icon,
  required BuildContext context,
  required int index,
}) {
  final color = Colors.white;
  final hoverColor = Colors.black;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    hoverColor: hoverColor,
    onTap: () => selectedItem(context, index),
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyApp(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TheoryPage(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SettingsPage(),
      ));
      break;
  }
}
