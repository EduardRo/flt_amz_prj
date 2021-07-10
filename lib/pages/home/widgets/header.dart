import 'package:flutter/material.dart';
import 'package:flt_amz_prj/constants.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: const EdgeInsets.only(
          left: 2 * Constants.kPadding,
          top: Constants.kPadding,
        ),
        child: Text(
          "Bookshelf",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 2 * Constants.kPadding,
          vertical: Constants.kPadding,
        ),
        child: Text(
          "Welcome Flutter Mappers",
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    ];
