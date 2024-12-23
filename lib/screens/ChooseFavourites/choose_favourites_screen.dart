import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/Body.dart';

class choose_favourites_screen extends StatelessWidget {
  static String routeName = "/choose_favourites_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
