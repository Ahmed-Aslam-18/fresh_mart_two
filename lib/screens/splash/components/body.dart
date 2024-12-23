import 'package:flutter/material.dart';

// This is the best practice
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/sign_in_screen.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Online Shopping",
      "image": "assets/images/splash_1.png",
      "subtitle": "You can do shopping anytime, anywhere, you want"
    },
    {
      "text":
          "Detailed Recipes",
      "image": "assets/images/splash_2.png",
      "subtitle": "If you are wondering what to cook today, don't worry because we have a list for you."
    },
    {
      "text": "Ship at Your Home",
      "image": "assets/images/splash_3.png",
      "subtitle": "The products you order will be delivered to your address"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData![index]!["image"]!,
                  text: splashData![index]!['text']!,
                  subtitle: splashData![index]!['subtitle']!,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(
                        SizeConfig.screenWidth! * 00.2)),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Shopping Now",
                      press: () {
                        print("ADS");
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: SizeConfig.screenWidth! * 0.25,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFF6C63FF) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
