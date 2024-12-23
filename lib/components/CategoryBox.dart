import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../screens/CategoryDetailPage/CategoryDetailPage.dart';
import '../size_config.dart';

class CategoryBox extends StatelessWidget {
  Color? color;
  String? text;

  CategoryBox({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.screenWidth! * 0.04),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CategoryDetailPage(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(
                SizeConfig.screenWidth! * 0.02,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.03),
            child: AutoSizeText(
              text!,
              style: subtitle(context).copyWith(
                color: Colors.white,
                fontSize: getDeviceWidth(context) * 0.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
