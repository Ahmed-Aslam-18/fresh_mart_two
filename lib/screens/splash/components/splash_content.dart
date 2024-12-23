import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, this.text, this.image, this.subtitle})
      : super(key: key);
  final String? text, image, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Spacer(flex: 2),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: onBoardingTitle(context),
        ),
        SizedBox(
          height: getDeviceHight(context) * 0.025,
        ),
        Container(
          width: SizeConfig.screenWidth! * 0.8,
          child: Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: onBoardingTitle(context).copyWith(
              fontSize: getDeviceWidth(context) * 0.04,
              color: Color(0xFF8F9BB3),
            ),
          ),
        ),
      ],
    );
  }
}
