import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class CategoryCard extends StatefulWidget {
  String? text;
  String? imgurl;

  CategoryCard({this.text, this.imgurl});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: SizeConfig.screenWidth! * 0.25,
                height: SizeConfig.screenWidth! * 0.25,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenWidth! * 0.045),
                  image: DecorationImage(
                      image: AssetImage('assets/images/${widget.imgurl}'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                width: SizeConfig.screenWidth! * 0.25,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * 0.025,
                    vertical: SizeConfig.screenHeight! * 0.01,
                  ),
                  child: Center(
                    child: Text(
                      widget.text!,
                      textAlign: TextAlign.center,
                      style: subtitle(context).copyWith(
                        color: blackishColor,
                        fontSize: getDeviceWidth(context) * 0.035,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(getDeviceWidth(context) * 0.01),
              child: CircleAvatar(
                radius: getDeviceWidth(context) * 0.035,
                backgroundColor: isFav ? kPrimaryColor : Colors.white,
                child: isFav
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
