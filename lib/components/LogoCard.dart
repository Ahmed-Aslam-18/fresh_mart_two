import 'package:flutter/material.dart';

class LogoCard extends StatelessWidget {
  double? width;
  double? height;

  LogoCard({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Logo.png',
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
