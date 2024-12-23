import 'package:flutter/material.dart';


import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../otp/otp_screen.dart';
import '../../sign_in/components/sign_form.dart';

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
              SizedBox(height: SizeConfig.screenHeight! * 0.1), // 4%
              Text(
                "Forgot Password",
                style: subtitle(context).copyWith(
                    color: blackishColor,
                    fontSize: getDeviceWidth(context) * 0.065,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                'Please type your email or phone number below to reset your password.',
                textAlign: TextAlign.center,
                style: subtitle(context).copyWith(
                  color: Color(0xFF8F9BB3),
                  fontSize: getDeviceWidth(context) * 0.037,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(context, "Email or Phone Number"),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButton(
            text: "Send",
            press: () {
              Navigator.of(context).pushReplacementNamed(OtpScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
