import 'package:flt_amz_prj/pages/home/widgets/books_list.dart';
import 'package:flt_amz_prj/pages/home/widgets/header.dart';
import 'package:flt_amz_prj/pages/home/widgets/icons_list.dart';
import 'package:flt_amz_prj/pages/home/widgets/new_book.dart';
import 'package:flt_amz_prj/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flt_amz_prj/pages/home/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // now the body is build
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...buildHeader(),
          buildSearchBar(),
          buildIconsList(),
          BuildBookList(),
          BuildNewBook(),
        ],
      )),
    );
  }
}
