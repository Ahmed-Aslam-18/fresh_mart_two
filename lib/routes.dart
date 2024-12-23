

import 'package:flutter/widgets.dart';
import 'package:fresh_mart_two/screens/IntroScreen.dart';
import 'package:fresh_mart_two/screens/forgot_password/forgot_password_screen.dart';
import 'package:fresh_mart_two/screens/otp/otp_screen.dart';
import 'package:fresh_mart_two/screens/reset_password/reset_password_screen.dart';
import 'package:fresh_mart_two/screens/sign_in/sign_in_screen.dart';
import 'package:fresh_mart_two/screens/splash/splash_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => IntroScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
};
