import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/MainScreen/components/CartFolder/ChangeAddressScreen.dart';
import '../size_config.dart';

class AddressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(SizeConfig.screenWidth! * 0.035),
        ),
      ),
      elevation: 2,
      child: Container(
        width: SizeConfig.screenWidth! * 0.9,
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.025),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    'Home',
                    style: subtitle(context).copyWith(
                        color: Color(0xFF8F9BB3),
                        fontSize: getDeviceWidth(context) * 0.035),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ChangeAddressScreen(),
                        ),
                      );
                    },
                    child: AutoSizeText(
                      'Change',
                      style: subtitle(context).copyWith(
                          color: kPrimaryColor,
                          fontSize: getDeviceWidth(context) * 0.035),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.025,
              ),
              Row(
                children: [
                  Container(
                    width: SizeConfig.screenWidth! * 0.2,
                    height: SizeConfig.screenWidth! * 0.2,
                    child: Image.asset(
                      'assets/images/Map.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.025,
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF8F9BB3),
                              size: SizeConfig.screenWidth! * 0.045,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth! * 0.025,
                            ),
                            Container(
                              width: SizeConfig.screenWidth! * 0.55,
                              child: AutoSizeText(
                                '147 Kere Terrace, New York, US.',
                                style: subtitle(context).copyWith(
                                    color: Color(0xFF222B45),
                                    fontSize: getDeviceWidth(context) * 0.035),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: Color(0xFF8F9BB3),
                              size: SizeConfig.screenWidth! * 0.045,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth! * 0.025,
                            ),
                            Container(
                              width: SizeConfig.screenWidth! * 0.55,
                              child: AutoSizeText(
                                'Todd Benson',
                                style: subtitle(context).copyWith(
                                    color: Color(0xFF222B45),
                                    fontSize: getDeviceWidth(context) * 0.035),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.call,
                              color: Color(0xFF8F9BB3),
                              size: SizeConfig.screenWidth! * 0.045,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth! * 0.025,
                            ),
                            Container(
                              width: SizeConfig.screenWidth! * 0.55,
                              child: AutoSizeText(
                                '+1(234)86 1122 099',
                                style: subtitle(context).copyWith(
                                    color: Color(0xFF222B45),
                                    fontSize: getDeviceWidth(context) * 0.035),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
