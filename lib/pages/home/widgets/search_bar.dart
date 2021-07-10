import 'package:flt_amz_prj/constants.dart';
import 'package:flutter/material.dart';

Widget buildSearchBar() => Padding(
      padding: const EdgeInsets.all(2 * Constants.kPadding),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search a Boock",
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.search),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: Constants.kPadding,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
