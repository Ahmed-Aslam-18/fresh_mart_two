import 'package:flutter/material.dart';
import '../../../components/LogoCard.dart';
import '../../../components/no_account_text.dart';
import '../../../components/socal_card.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                LogoCard(
                  height: SizeConfig.screenHeight! * 0.2,
                  width: SizeConfig.screenWidth! * 0.5,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to ",
                      style: subtitle(context).copyWith(
                        fontSize: getProportionateScreenWidth(25),
                        color: blackishColor,
                      ),
                    ),
                    Text(
                      "ALPHA",
                      style: subtitle(context).copyWith(
                          fontSize: getProportionateScreenWidth(25),
                          color: kPrimaryColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fresh ",
                      style: subtitle(context).copyWith(
                        fontSize: getProportionateScreenWidth(20),
                        color: blackishColor,
                      ),
                    ),
                    Text(
                      "Mart",
                      style: subtitle(context).copyWith(
                          fontSize: getProportionateScreenWidth(20),
                          color: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                      color: Color(0xFFF2F8FF),
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                      color: Color(0xFFF2F8FF),
                    ),
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                      color: Color(0xFFF2F8FF),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
                SizedBox(height: getProportionateScreenHeight(20)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
