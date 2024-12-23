import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Providers/CartProvider.dart';
import '../../../components/SearchItemCard.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../models/CartItem.dart';
import '../../../models/FoodItem.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  FoodItem? foodItem;

  Body({this.foodItem});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ScrollController myscrollController = ScrollController();
  int quantity = 1;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    widget.foodItem = FoodItem(
      imgUrl: 'assets/images/Salad1.png',
      name: 'Australian Cherry',
      discount: 7.2,
      price: 5.6,
      isFree: true,
      description:
          'Everybody enjoys indulging in juicy red cherries during the summer season. This vibrant red fruit is a great blend of sweet flavours with a tingle of sourness and adds the ...',
    );
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: getDeviceHight(context),
        child: Stack(
          children: [
            Container(
              height: getDeviceHight(context) * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.foodItem!.imgUrl!),
                    fit: BoxFit.cover),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.7,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  height: getDeviceHight(context) * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(getDeviceWidth(context) * 0.065),
                      topRight:
                          Radius.circular(getDeviceWidth(context) * 0.065),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: getDeviceHight(context) * 0.015),
                    child: ListView(
                      controller: myscrollController,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getDeviceWidth(context) * 0.045),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: SizeConfig.screenWidth!,
                                color: Colors.white,
                                child: AutoSizeText(
                                  widget.foodItem!.name!,
                                  overflow: TextOverflow.ellipsis,
                                  style: subtitle(context).copyWith(
                                    color: Color(0xFF222B45),
                                    fontWeight: FontWeight.w500,
                                    fontSize: getDeviceWidth(context) * 0.055,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.screenWidth! * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AutoSizeText(
                                        '\$${widget.foodItem!.price!}',
                                        style: subtitle(context).copyWith(
                                          color: kPrimaryColor,
                                          fontSize:
                                              getDeviceWidth(context) * 0.05,
                                        ),
                                      ),
                                      AutoSizeText(
                                        '\$${widget.foodItem!.discount!}',
                                        style: subtitle(context).copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Color(0xFF8F9BB3),
                                          fontSize:
                                              getDeviceWidth(context) * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                  widget.foodItem!.isFree!
                                      ? Container(
                                          decoration: BoxDecoration(
                                            color: Color(0XFF0095FF),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                SizeConfig.screenWidth! * 0.02,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                SizeConfig.screenWidth! * 0.02),
                                            child: AutoSizeText(
                                              'FREE SHIP',
                                              style: subtitle(context).copyWith(
                                                color: Colors.white,
                                                fontSize:
                                                    getDeviceWidth(context) *
                                                        0.04,
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconText(
                                Icons.support_agent_outlined, context, 'Safe'),
                            IconText(Icons.description, context, 'Quality'),
                            IconText(Icons.edit, context, 'Fresh'),
                          ],
                        ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getDeviceWidth(context) * 0.045),
                          child: AutoSizeText(
                            widget.foodItem!.description!,
                            textAlign: TextAlign.justify,
                            style: subtitle(context).copyWith(
                              color: Color(0xFF8F9BB3),
                              fontSize: getDeviceWidth(context) * 0.04,
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: getDeviceWidth(context) * 0.045),
                        //   child: Align(
                        //     alignment: Alignment.centerRight,
                        //     child: AutoSizeText(
                        //       'View more',
                        //       style: subtitle(context).copyWith(
                        //         color: kPrimaryColor,
                        //         fontSize: getDeviceWidth(context) * 0.04,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getDeviceWidth(context) * 0.15),
                          child: isInCart
                              ? DefaultButton(
                                  text:
                                      '\$${(quantity * widget.foodItem!.price!).toStringAsFixed(1)}                  Check Out',
                                  press: () {},
                                )
                              : DefaultButton(
                                  text: 'Add to Cart',
                                  press: () {
                                    showCustomSnackBar(context);
                                  },
                                ),
                        ),
                        SizedBox(
                          height: getDeviceHight(context) * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getDeviceWidth(context) * 0.045),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AutoSizeText(
                              'Similar Products',
                              style: subtitle(context).copyWith(
                                color: Color(0xFF222B45),
                                fontSize: getDeviceWidth(context) * 0.05,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getDeviceWidth(context) * 0.025),
                            child: GridView(
                              controller: myscrollController,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.75,
                                      crossAxisSpacing:
                                          getDeviceWidth(context) * 0.02,
                                      mainAxisSpacing:
                                          getDeviceWidth(context) * 0.02),
                              children: [
                                SearchItemCard(),
                                SearchItemCard(),
                                SearchItemCard(),
                                SearchItemCard(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void showCustomSnackBar(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getDeviceWidth(context) * 0.065),
          topRight: Radius.circular(getDeviceWidth(context) * 0.065),
        ),
      ),
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.045),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.clear,
                          color: Color(0xFF222B45),
                        ),
                      ),
                      AutoSizeText(
                        'Add new Items',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                      Icon(
                        Icons.cancel_outlined,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.01,
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Container(
                      width: SizeConfig.screenWidth! * 0.2,
                      height: SizeConfig.screenWidth! * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.screenWidth! * 0.045),
                        image: DecorationImage(
                            image: AssetImage(widget.foodItem!.imgUrl!),
                            fit: BoxFit.fill),
                      ),
                    ),
                    title: AutoSizeText(
                      widget.foodItem!.name!,
                      style: subtitle(context).copyWith(
                        color: Color(0xFF222B45),
                        fontSize: getDeviceWidth(context) * 0.05,
                      ),
                    ),
                    subtitle: AutoSizeText(
                      'Price per kg',
                      style: subtitle(context).copyWith(
                        color: Color(0xFF8F9BB3),
                        fontSize: getDeviceWidth(context) * 0.035,
                      ),
                    ),
                    trailing: AutoSizeText(
                      '\$${widget.foodItem!.price}',
                      style: subtitle(context).copyWith(
                        color: Color(0xFF222B45),
                        fontSize: getDeviceWidth(context) * 0.035,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'Amount',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                      AutoSizeText(
                        '\$${(quantity * widget.foodItem!.price!).toStringAsFixed(1)}',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'Total Price',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                      AutoSizeText(
                        '\$${(quantity * widget.foodItem!.price!).toStringAsFixed(1)}',
                        style: subtitle(context).copyWith(
                          color: kPrimaryColor,
                          fontSize: getDeviceWidth(context) * 0.055,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          state(() {
                            quantity++;
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: kPrimaryColor,
                        ),
                      ),
                      AutoSizeText(
                        '$quantity',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          state(() {
                            quantity--;
                          });
                        },
                        child: Icon(
                          Icons.remove,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.45,
                        child: DefaultButton(
                          press: () {
                            Provider.of<CartProvider>(context, listen: false)
                                .addToCart(
                              CartItem(
                                foodItem: widget.foodItem,
                                quantity: quantity,
                                totalPrice: (quantity * widget.foodItem!.price!),
                              ),
                            );
                            state(() {
                              isInCart = true;
                            });
                            setState(() {

                            });
                            print(isInCart);
                            Navigator.of(context).pop();
                          },
                          text: 'Add to Cart',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.02,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget IconText(IconData iconData, BuildContext context, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: kPrimaryColor,
          size: SizeConfig.screenWidth! * 0.08,
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.015,
        ),
        AutoSizeText(
          '$text',
          style: subtitle(context).copyWith(
            color: Color(0xFF222B45),
            fontSize: getDeviceWidth(context) * 0.05,
          ),
        ),
      ],
    );
  }
}
