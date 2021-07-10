import 'package:flt_amz_prj/constants.dart';
import 'package:flt_amz_prj/models/icon_model.dart';
import 'package:flutter/material.dart';

final List<IconModel> hearderImages = IconModel.icons;

Widget buildIconsList() => Padding(
      padding: const EdgeInsets.only(
        bottom: Constants.kPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            hearderImages.length,
            (index) => Container(
              width: 100,
              child: Column(
                children: [
                  Image.asset(
                    hearderImages[index].icon,
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    hearderImages[index].title,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
