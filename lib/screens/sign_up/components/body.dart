import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/sign_in_screen.dart';
import 'sign_up_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight! * 0.01), // 4%
                Text(
                  "Sign Up",
                  style: subtitle(context).copyWith(
                      color: blackishColor,
                      fontSize: getDeviceWidth(context) * 0.065,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.02),
                Text(
                  'Please type your information below',
                  textAlign: TextAlign.center,
                  style: subtitle(context).copyWith(
                    color: Color(0xFF8F9BB3),
                    fontSize: getDeviceWidth(context) * 0.037,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignUpForm(),

                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: subtitle(context).copyWith(
                        fontSize: getDeviceWidth(context) * 0.04,
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, SignInScreen.routeName),
                      child: Text(
                        "Sign In",
                        style: subtitle(context).copyWith(
                            fontSize: getDeviceWidth(context) * 0.04,
                            color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
