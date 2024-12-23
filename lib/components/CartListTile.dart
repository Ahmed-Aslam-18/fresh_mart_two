import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import '../constants.dart';
import '../models/CartItem.dart';
import '../size_config.dart';

class CartListTile extends StatefulWidget {
  CartItem? cartItem;

  CartListTile({this.cartItem});

  @override
  _CartListTileState createState() => _CartListTileState();
}

class _CartListTileState extends State<CartListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getDeviceWidth(context) * 0.04),
      child: Row(
        children: [
          Container(
            width: SizeConfig.screenWidth!! * 0.2,
            height: SizeConfig.screenWidth!! * 0.2,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(SizeConfig.screenWidth! !* 0.045),
              image: DecorationImage(
                  image: AssetImage(widget.cartItem!.foodItem!.imgUrl!),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth!! * 0.025,
            ),
            child: Container(
              height: SizeConfig.screenWidth!! * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: SizeConfig.screenWidth! !* 0.65,
                    child: AutoSizeText(
                      widget.cartItem!.foodItem!.name!,
                      style: subtitle(context).copyWith(
                        color: Color(0xFF222B45),
                        fontSize: getDeviceWidth(context) * 0.05,
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth! !* 0.65,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          '\$${widget.cartItem!.foodItem!.price!}',
                          style: subtitle(context).copyWith(
                            color: kPrimaryColor,
                            fontSize: getDeviceWidth(context) * 0.04,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.cartItem!.quantity=widget.cartItem!.quantity!+1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.screenWidth! ! * 0.015),
                                  border: Border.all(color: Color(0xFFEDF1F7)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth! !* 0.015,
                            ),
                            AutoSizeText(
                              '${widget.cartItem!.quantity}',
                              style: subtitle(context).copyWith(
                                color: Color(0xFF222B45),
                                fontSize: getDeviceWidth(context) * 0.04,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth! !* 0.015,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.cartItem!.quantity=widget.cartItem!.quantity!-1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.screenWidth! !* 0.015),
                                  border: Border.all(color: Color(0xFFEDF1F7)),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: kPrimaryColor,
                                ),
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
        ],
      ),
    );

  }
}
