import 'package:flutter/material.dart';


import '../../../components/SearchItemCard.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.025),
          child: GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: getDeviceWidth(context) * 0.02,
                mainAxisSpacing: getDeviceWidth(context) * 0.02),
            children: [
              SearchItemCard(),
              SearchItemCard(),
              SearchItemCard(),
              SearchItemCard(),
              SearchItemCard(),
              SearchItemCard(),
            ],
          ),
        ),
      ),
    );
  }
}
