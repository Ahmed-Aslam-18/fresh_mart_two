import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/components/sign_form.dart';
import '../../sign_in/sign_in_screen.dart';

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
              SizedBox(height: SizeConfig.screenHeight!! * 0.1), // 4%
              Text(
                "Reset Password",
                style: subtitle(context).copyWith(
                    color: blackishColor,
                    fontSize: getDeviceWidth(context) * 0.065,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                'Type your new password and confirm it below',
                textAlign: TextAlign.center,
                style: subtitle(context).copyWith(
                  color: Color(0xFF8F9BB3),
                  fontSize: getDeviceWidth(context) * 0.037,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              ResetPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ResetPassForm extends StatefulWidget {
  @override
  _ResetPassFormState createState() => _ResetPassFormState();
}

class _ResetPassFormState extends State<ResetPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPasswordFormField(context, "New Password"),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(context, "Confirm New Password"),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButton(
            text: "Reset Password",
            press: () {
              Navigator.of(context)
                  .pushReplacementNamed(SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
