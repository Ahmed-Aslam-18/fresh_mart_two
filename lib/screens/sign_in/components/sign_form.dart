import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../ChooseFavourites/choose_favourites_screen.dart';
import '../../forgot_password/forgot_password_screen.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
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
          buildEmailFormField(context, 'Email or Phone Number'),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(context, "Password"),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: subtitle(context).copyWith(
                    color: kPrimaryColor,
                    fontSize: getDeviceWidth(context) * 0.04,
                  ),
                ),
              )
            ],
          ),
          // FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Sign In",
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => choose_favourites_screen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

TextFormField buildPasswordFormField(BuildContext context, String label) {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: label,
      hintStyle: subtitle(context).copyWith(
          color: Color(0xFF8F9BB3), fontSize: getDeviceWidth(context) * 0.04),
      border:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEDF1F7))),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEDF1F7))),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEDF1F7))),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Color(0xFFEDF1F7)),
    ),
  );
}

TextFormField buildEmailFormField(BuildContext context, String label) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: label,
      hintStyle: subtitle(context).copyWith(
          color: Color(0xFF8F9BB3), fontSize: getDeviceWidth(context) * 0.04),
      border:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEDF1F7))),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEDF1F7))),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEDF1F7))),
    ),
  );
}
