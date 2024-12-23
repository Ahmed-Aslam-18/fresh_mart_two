import 'package:flutter/material.dart';

import '../../../components/CategoryCard.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../MainScreen/main_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Choose Favourites",
                style: subtitle(context).copyWith(
                    color: blackishColor,
                    fontSize: getDeviceWidth(context) * 0.065,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                'Choose favourite items and we suggest suitable products for you',
                textAlign: TextAlign.center,
                style: subtitle(context).copyWith(
                  color: Color(0xFF8F9BB3),
                  fontSize: getDeviceWidth(context) * 0.037,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              SelectFavouriteWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectFavouriteWidget extends StatefulWidget {
  @override
  _SelectFavouriteWidgetState createState() => _SelectFavouriteWidgetState();
}

class _SelectFavouriteWidgetState extends State<SelectFavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: SizeConfig.screenHeight! * 0.25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                text: 'Fruits',
                imgurl: 'fruits.png',
              ),
              CategoryCard(
                text: 'Meat & Seafood',
                imgurl: 'Meet.png',
              ),
              CategoryCard(
                text: 'Vegetables',
                imgurl: 'vegetables.png',
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.02),
        Container(
          height: SizeConfig.screenHeight! * 0.25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                text: 'Snacks',
                imgurl: 'Snacks.png',
              ),
              CategoryCard(
                text: 'Rice',
                imgurl: 'Rice.png',
              ),
              CategoryCard(
                text: 'Eggs,Tofu,Deli',
                imgurl: 'Egg.png',
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.02),
        Container(
          height: SizeConfig.screenHeight! * 0.25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                text: 'Chicken & Poultry',
                imgurl: 'curosel3.png',
              ),
              CategoryCard(
                text: 'Drinks',
                imgurl: 'drinks.png',
              ),
              MarkAll(),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.02),
        DefaultButton(
          text: "Done",
          press: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MainScreen()));
          },
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.08),
      ],
    );
  }
}

class MarkAll extends StatefulWidget {
  @override
  _MarkAllState createState() => _MarkAllState();
}

class _MarkAllState extends State<MarkAll> {
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
                    border: Border.all(color: Color(0xFF707070))),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Mark All',
                    style: subtitle(context).copyWith(
                      color: blackishColor,
                      fontSize: getDeviceWidth(context) * 0.035,
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
                radius: getDeviceWidth(context) * 0.037,
                backgroundColor: isFav ? Colors.transparent : Color(0xFF707070),
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
          ),
        ],
      ),
    );
  }
}
