import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../components/CarouselWidget.dart';
import '../../../components/CategoryBox.dart';
import '../../../components/FoodCard.dart';
import '../../../components/PickCard.dart';
import '../../../components/SearchListTile.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  bool isSearching = false;
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode=FocusNode();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (isSearching) {
          setState(() {
            textEditingController.clear();
            isSearching = false;
          });
        }
        return Future.delayed(Duration(seconds: 0)).then((value) => true);
      },
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            color: greyColor,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: SizeConfig.screenHeight! * 0.02),
                          isSearching
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: AutoSizeText(
                                        'Search',
                                        style: subtitle(context).copyWith(
                                          color: Color(0xFF222B45),
                                          fontWeight: FontWeight.w500,
                                          fontSize:
                                              getDeviceWidth(context) * 0.055,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: SizeConfig.screenHeight! * 0.02),
                                  ],
                                )
                              : Container(),
                          SearchBar(),
                          isSearching
                              ? Container()
                              : SizedBox(height: SizeConfig.screenHeight! * 0.04),
                          isSearching
                              ? SizedBox(height: SizeConfig.screenHeight! * 0.02)
                              : Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: SizeConfig.screenHeight! * 0.08,
                                      child: ListView(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          CategoryBox(
                                            text: 'Fruits',
                                            color: Color(0xFF0095FF),
                                          ),
                                          CategoryBox(
                                            text: 'Meat & Seafood',
                                            color: Color(0xFF7E76FF),
                                          ),
                                          CategoryBox(
                                            text: 'Vegetable',
                                            color: kPrimaryColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height: SizeConfig.screenHeight! * 0.03),
                                    Divider(),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                  isSearching
                      ? Container(
                          color: Colors.white,
                          height: getDeviceHight(context) * 0.9,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              SearchListTile(),
                              SearchListTile(
                                freeDelivery: true,
                              ),
                              SearchListTile(),
                            ],
                          ),
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: SizeConfig.screenHeight! * 0.03),
                            CarouselWidget(),
                            SizedBox(height: SizeConfig.screenHeight! * 0.03),
                            ViewAll('Take Your Pick'),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  PickCard(),
                                  PickCard(
                                    imgurl: 'Salad2.png',
                                  ),
                                  PickCard(
                                    imgurl: 'Salad2.png',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight! * 0.03),
                            ViewAll('Breakfast'),
                            Container(
                              width: SizeConfig.screenWidth! * 0.9,
                              child: AutoSizeText(
                                'Breakfast is widely acknowledged to be the most important meal of the day.',
                                style: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getDeviceWidth(context) * 0.04,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FoodCard(),
                                  FoodCard(),
                                  FoodCard(),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight! * 0.03),
                            ViewAll('Fruits'),
                            Container(
                              width: SizeConfig.screenWidth! * 0.9,
                              child: AutoSizeText(
                                'Breakfast is widely acknowledged to be the most important meal of the day.',
                                style: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getDeviceWidth(context) * 0.04,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FoodCard(),
                                  FoodCard(),
                                  FoodCard(),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight! * 0.03),
                            ViewAll('Lunch'),
                            Container(
                              width: SizeConfig.screenWidth! * 0.9,
                              child: AutoSizeText(
                                'Breakfast is widely acknowledged to be the most important meal of the day.',
                                style: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getDeviceWidth(context) * 0.04,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FoodCard(),
                                  FoodCard(),
                                  FoodCard(),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight! * 0.03),
                            ViewAll('Dinner'),
                            Container(
                              width: SizeConfig.screenWidth! * 0.9,
                              child: AutoSizeText(
                                'Breakfast is widely acknowledged to be the most important meal of the day.',
                                style: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getDeviceWidth(context) * 0.04,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FoodCard(),
                                  FoodCard(),
                                  FoodCard(),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeConfig.screenHeight! * 0.05),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ViewAll(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight! * 0.01,
      ),
      child: Container(
        width: SizeConfig.screenWidth! * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              text,
              style: subtitle(context).copyWith(
                color: Color(0xFF222B45),
                fontWeight: FontWeight.w500,
                fontSize: getDeviceWidth(context) * 0.05,
              ),
            ),
            AutoSizeText(
              'View All',
              style: subtitle(context).copyWith(
                color: kPrimaryColor,
                fontSize: getDeviceWidth(context) * 0.045,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SeachQuery(String val) {
    setState(() {
      isSearching=true;
    });
  }


  Widget SearchBar() {
    return Container(
      color: greyColor,
      child: TextField(
        onSubmitted: (val){SeachQuery(val);},
        focusNode: focusNode,
        cursorColor: kPrimaryColor,
        controller: textEditingController,
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
            child: GestureDetector(
              onTap: (){
                SeachQuery(textEditingController.text);
              },
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
      ),
    );
  }
}
