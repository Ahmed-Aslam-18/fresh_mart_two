import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../components/CartListTile.dart';
import '../../../../components/default_button.dart';
import '../../../../models/CartItem.dart';
import '../../../../models/FoodItem.dart';
import '../../../../size_config.dart';
import 'CheckOutScreen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          height: 0.9,
          color: Colors.white,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * 0.045),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: SizeConfig.screenHeight! * 0.1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'Cart',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontWeight: FontWeight.bold,
                          fontSize: getDeviceWidth(context) * 0.055,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeight! * 0.65,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            'Single Items',
                            style: subtitle(context).copyWith(
                              color: Color(0xFF222B45),
                              fontWeight: FontWeight.w500,
                              fontSize: getDeviceWidth(context) * 0.045,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        CartListTile(
                          cartItem: CartItem(
                            foodItem: FoodItem(
                              imgUrl: 'assets/images/Salad1.png',
                              name: 'Australian Cherry',
                              discount: 7.2,
                              price: 5.6,
                              isFree: true,
                              description:
                                  'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
                            ),
                            quantity: 1,
                          ),
                        ),
                        CartListTile(
                          cartItem: CartItem(
                            foodItem: FoodItem(
                              imgUrl: 'assets/images/Salad1.png',
                              name: 'Australian Cherry',
                              discount: 7.2,
                              price: 5.6,
                              isFree: true,
                              description:
                                  'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
                            ),
                            quantity: 1,
                          ),
                        ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            'Fresh Salad Pasta',
                            style: subtitle(context).copyWith(
                              color: Color(0xFF222B45),
                              fontWeight: FontWeight.w500,
                              fontSize: getDeviceWidth(context) * 0.045,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        CartListTile(
                          cartItem: CartItem(
                            foodItem: FoodItem(
                              imgUrl: 'assets/images/Salad1.png',
                              name: 'Australian Cherry',
                              discount: 7.2,
                              price: 5.6,
                              isFree: true,
                              description:
                                  'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
                            ),
                            quantity: 1,
                          ),
                        ),
                        CartListTile(
                          cartItem: CartItem(
                            foodItem: FoodItem(
                              imgUrl: 'assets/images/Salad1.png',
                              name: 'Australian Cherry',
                              discount: 7.2,
                              price: 5.6,
                              isFree: true,
                              description:
                                  'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
                            ),
                            quantity: 1,
                          ),
                        ),
                        CartListTile(
                          cartItem: CartItem(
                            foodItem: FoodItem(
                              imgUrl: 'assets/images/Salad1.png',
                              name: 'Australian Cherry',
                              discount: 7.2,
                              price: 5.6,
                              isFree: true,
                              description:
                                  'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
                            ),
                            quantity: 1,
                          ),
                        ),
                        CartListTile(
                          cartItem: CartItem(
                            foodItem: FoodItem(
                              imgUrl: 'assets/images/Salad1.png',
                              name: 'Australian Cherry',
                              discount: 7.2,
                              price: 5.6,
                              isFree: true,
                              description:
                                  'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
                            ),
                            quantity: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: SizeConfig.screenHeight! * 0.1,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.screenHeight! * 0.015),
                        child: DefaultButton(
                          text: '\$11.5                  Check Out',
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CheckOutScreen(),
                              ),
                            );
                          },
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
