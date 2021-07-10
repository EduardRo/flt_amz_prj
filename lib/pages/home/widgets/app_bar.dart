import 'package:flutter/material.dart';
import 'package:flt_amz_prj/constants.dart';

AppBar buildAppBar() => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Image.asset(
        "assets/images/logo.png",
        height: 25,
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.all(Constants.kPadding),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpeg"),
            ))
      ],
    );
