import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../screens/ItemDetailPage/ItemDetailPage.dart';
import '../size_config.dart';

class FoodCard extends StatelessWidget {
  String imgurl;
  String text;
  String time;
  String calories;

  FoodCard(
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
          elevation: 5,
          child: Stack(
            children: [
              Container(
                width: SizeConfig.screenWidth! * 0.75,
                height: SizeConfig.screenWidth! * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        SizeConfig.screenWidth! * 0.045,
                      ),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/$imgurl'),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: SizeConfig.screenWidth! * 0.75,
                  color: Colors.black54,
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.015),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          text,
                          style: subtitle(context).copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: getDeviceWidth(context) * 0.05,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              time,
                              style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontSize: getDeviceWidth(context) * 0.035,
                              ),
                            ),
                            SizedBox(
                              width: getDeviceWidth(context) * 0.05,
                            ),
                            AutoSizeText(
                              calories,
                              style: subtitle(context).copyWith(
                                color: Colors.white,
                                fontSize: getDeviceWidth(context) * 0.03,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.015),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.015),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
