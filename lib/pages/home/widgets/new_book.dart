import 'package:flt_amz_prj/constants.dart';
import 'package:flt_amz_prj/models/book_model.dart';
import 'package:flutter/material.dart';

class BuildNewBook extends StatelessWidget {
  final newBook = BookModel.newBook;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 2 * Constants.kPadding,
            vertical: Constants.kPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot New Releases",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
        InkWell(
          onTap: () {
            // must be done
          },
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    newBook.image,
                    height: 180,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 120,
                child: Text(
                  newBook.title,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 120,
                child: Text(
                  newBook.subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
