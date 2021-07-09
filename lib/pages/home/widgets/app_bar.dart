import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Image.asset("assets/images/logo.png", height: 25),
      actions: [Padding(padding: const EdgeInsets.all(8.0))],
    );
