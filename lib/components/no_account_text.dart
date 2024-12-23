import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account ? ",
          style: subtitle(context).copyWith(
            fontSize: getDeviceWidth(context) * 0.04,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: subtitle(context).copyWith(
                fontSize: getDeviceWidth(context) * 0.04, color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
