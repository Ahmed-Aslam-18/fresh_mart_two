import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../screens/ItemDetailPage/ItemDetailPage.dart';
import '../size_config.dart';

class PickCard extends StatelessWidget {
  String imgurl;
  String text;
  String time;
  String calories;

  PickCard(
      {this.imgurl = 'Salad1.png',
      this.text = 'Fresh Salad Thaid',
      this.time = '10 mins',
      this.calories = '268 kcal'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        top: SizeConfig.screenWidth! * 0.025,
        bottom: SizeConfig.screenWidth! * 0.025,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ItemDetailPage(),
          ));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                SizeConfig.screenWidth! * 0.045,
              ),
            ),
          ),
          elevation: 2,
          child: Container(
            width: SizeConfig.screenWidth! * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: SizeConfig.screenWidth! * 0.45,
                  height: SizeConfig.screenWidth! * 0.35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          SizeConfig.screenWidth! * 0.025,
                        ),
                        topRight: Radius.circular(
                          SizeConfig.screenWidth! * 0.025,
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/$imgurl'),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.screenWidth! * 0.02,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        text,
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontWeight: FontWeight.w500,
                          fontSize: getDeviceWidth(context) * 0.035,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            time,
                            style: subtitle(context).copyWith(
                              color: Color(0xFF8F9BB3),
                              fontSize: getDeviceWidth(context) * 0.03,
                            ),
                          ),
                          AutoSizeText(
                            calories,
                            style: subtitle(context).copyWith(
                              color: Color(0xFF8F9BB3),
                              fontSize: getDeviceWidth(context) * 0.03,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
