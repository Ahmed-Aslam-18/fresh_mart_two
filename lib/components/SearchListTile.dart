import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class SearchListTile extends StatelessWidget {
  String imgurl;
  String name;
  String type;
  bool freeDelivery;

  SearchListTile(
      {this.imgurl = 'Salad1.png',
      this.name = 'Ambrosia Apples',
      this.type = 'Fruit',
      this.freeDelivery = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: SizeConfig.screenHeight!*0.025),
      child: ListTile(
        leading: Container(
          width: SizeConfig.screenWidth! * 0.15,
          height: SizeConfig.screenWidth! * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  SizeConfig.screenWidth! * 0.045,
                ),
              ),
              image: DecorationImage(
                  image: AssetImage('assets/images/$imgurl'), fit: BoxFit.fill)),
        ),
        title: AutoSizeText(
          name,
          style: subtitle(context).copyWith(
            color: Color(0xFF222B45),
            fontWeight: FontWeight.w500,
            fontSize: getDeviceWidth(context) * 0.045,
          ),
        ),
        subtitle: AutoSizeText(
          type,
          style: subtitle(context).copyWith(
            color: Color(0xFF8F9BB3),
            fontSize: getDeviceWidth(context) * 0.04,
          ),
        ),
        trailing: freeDelivery
            ? FreeShip(context)
            : Container(
                width: 0,
                height: 0,
              ),
      ),
    );
  }

  Widget FreeShip(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0095FF),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig.screenWidth! * 0.02,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.02),
        child: AutoSizeText(
          'FREE SHIP',
          style: subtitle(context).copyWith(
            color: Colors.white,
            fontSize: getDeviceWidth(context) * 0.035,
          ),
        ),
      ),
    );
  }
}
