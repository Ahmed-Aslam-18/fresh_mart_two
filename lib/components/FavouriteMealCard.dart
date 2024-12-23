import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class FavouriteMealCard extends StatefulWidget {
  String imgurl;
  String text;
  String type;
  bool isfavourite;

  FavouriteMealCard(
      {this.imgurl = 'Salad1.png',
      this.text = 'Fresh Salad Thaid',
      this.type = 'Lunch',
      this.isfavourite = false});

  @override
  _FavouriteMealCardState createState() => _FavouriteMealCardState();
}

class _FavouriteMealCardState extends State<FavouriteMealCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeConfig.screenWidth! * 0.025,
          ),
        ),
      ),
      child: Stack(
        children: [
          Column(
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
                        image: AssetImage('assets/images/${widget.imgurl}'),
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
                    Container(
                      width: SizeConfig.screenWidth! * 0.4,
                      color: Colors.white,
                      child: AutoSizeText(
                        widget.text,
                        overflow: TextOverflow.ellipsis,
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontWeight: FontWeight.w500,
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.screenWidth! * 0.4,
                      child: AutoSizeText(
                        widget.type,
                        overflow: TextOverflow.ellipsis,
                        style: subtitle(context).copyWith(
                          color: Color(0xFF8F9BB3),
                          fontSize: getDeviceWidth(context) * 0.035,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenWidth! * 0.01,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Row(
                    //       mainAxisSize: MainAxisSize.min,
                    //       children: [
                    //         AutoSizeText(
                    //           widget.price,
                    //           style: subtitle(context).copyWith(
                    //             color: kPrimaryColor,
                    //             fontSize: getDeviceWidth(context) * 0.045,
                    //           ),
                    //         ),
                    //         AutoSizeText(
                    //           widget.price,
                    //           style: subtitle(context).copyWith(
                    //             decoration: TextDecoration.lineThrough,
                    //             color: Color(0xFF8F9BB3),
                    //             fontSize: getDeviceWidth(context) * 0.025,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Container(
                    //       width: SizeConfig.screenWidth! * 0.08,
                    //       height: SizeConfig.screenWidth! * 0.08,
                    //       decoration: BoxDecoration(
                    //         color: kPrimaryColor,
                    //         borderRadius: BorderRadius.all(
                    //           Radius.circular(
                    //             SizeConfig.screenWidth! * 0.02,
                    //           ),
                    //         ),
                    //       ),
                    //       child: Icon(
                    //         Icons.add_shopping_cart,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.015),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF121924).withOpacity(0.45),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.015),
                    child: Icon(
                      widget.isfavourite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: widget.isfavourite ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
