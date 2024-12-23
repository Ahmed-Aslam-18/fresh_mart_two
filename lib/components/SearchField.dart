import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SearchField extends StatefulWidget {

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyColor,
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(SizeConfig.screenWidth! * 0.03),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: "Find something...",
          hintStyle: subtitle(context).copyWith(
            color: Color(0xFF8F9BB3),
            fontSize: getDeviceWidth(context) * 0.04,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.01),
            child: Container(
              width: SizeConfig.screenWidth! * 0.06,
              height: SizeConfig.screenWidth! * 0.06,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    SizeConfig.screenWidth! * 0.02,
                  ),
                ),
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
