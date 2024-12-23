import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../reset_password/reset_password_screen.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.1), // 4%
              Text(
                "Verification",
                style: subtitle(context).copyWith(
                    color: blackishColor,
                    fontSize: getDeviceWidth(context) * 0.065,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                'We have just sent you an OTP, please enter below to verify',
                textAlign: TextAlign.center,
                style: subtitle(context).copyWith(
                  color: Color(0xFF8F9BB3),
                  fontSize: getDeviceWidth(context) * 0.037,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              OtpForm(),
              buildTimer(context),
              SizedBox(height: SizeConfig.screenHeight! * 0.025),
              DefaultButton(
                text: "Complete",
                press: () {
                  Navigator.of(context).pushReplacementNamed(ResetPasswordScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Resend on ",
          style: subtitle(context).copyWith(
              color: kPrimaryColor, fontSize: getDeviceWidth(context) * 0.04),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, value, child) => Text(
            "00:${value}",
            style: subtitle(context).copyWith(
                color: kPrimaryColor, fontSize: getDeviceWidth(context) * 0.04),
          ),
        ),
      ],
    );
  }
}
