import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mart_two/screens/splash/splash_screen.dart';

import '../components/LogoCard.dart';
import '../constants.dart';
import '../size_config.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/IntroScreen";

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed(SplashScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFFCFBFA),
      body: Stack(
        children: [
          Container(
            height: getDeviceHight(context) + getTopPadding(context),
            width: getDeviceWidth(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: getDeviceHight(context) + getTopPadding(context),
            width: getDeviceWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Buy From Home",
                  style: subtitle(context).copyWith(
                      fontSize: getProportionateScreenWidth(30),
                      color: secTextColor),
                ),
                SizedBox(
                  height: getDeviceHight(context) * 0.025,
                ),
                Text(
                  "Stay Safe",
                  style: subtitle(context).copyWith(
                      fontSize: getProportionateScreenWidth(30),
                      color: kPrimaryColor),
                ),
                LogoCard(
                  width: getDeviceWidth(context) * 0.8,
                  height: getDeviceHight(context) * 0.5,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: getDeviceWidth(context) * 0.045),
                  child: PunchLine(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget PunchLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Alpha ",
          style: subtitle(context).copyWith(
              fontSize: getProportionateScreenWidth(30), color: kPrimaryColor),
        ),
        Text(
          "Fresh ",
          style: subtitle(context).copyWith(
              fontSize: getProportionateScreenWidth(30), color: secTextColor),
        ),
        Text(
          "Mart",
          style: subtitle(context).copyWith(
              fontSize: getProportionateScreenWidth(30), color: kPrimaryColor),
        ),
      ],
    );
  }
}
