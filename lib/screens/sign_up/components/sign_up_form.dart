import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';


import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/components/sign_form.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(context, "Full Name"),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildEmailFormField(context, "Email"),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildPasswordFormField(context, 'Password'),
          SizedBox(height: getProportionateScreenHeight(15)),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Phone Number',
              prefixIcon: CountryCodePicker(
                onChanged: print,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                initialSelection: 'IT',
                favorite: ['+39', 'FR'],
                // optional. Shows only country name and flag
                showCountryOnly: false,
                // optional. Shows only country name and flag when popup is closed.
                showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
              ),
              hintStyle: subtitle(context).copyWith(
                  color: Color(0xFF8F9BB3),
                  fontSize: getDeviceWidth(context) * 0.04),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFEDF1F7))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFEDF1F7))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFEDF1F7))),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (val) {},
                checkColor: Colors.white,
                activeColor: kPrimaryColor,
              ),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.015,
              ),
              Container(
                width: SizeConfig.screenWidth! * 0.7,
                child: AutoSizeText(
                  'I have a referral registration code',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF8F9BB3),
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Send",
            press: () {},
          ),
        ],
      ),
    );
  }
}
