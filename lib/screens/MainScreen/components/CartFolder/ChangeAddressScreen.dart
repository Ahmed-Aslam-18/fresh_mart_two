import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import 'AddNewAddressScreen.dart';

class ChangeAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Change Delivery Address',
          style: subtitle(context).copyWith(
              color: Color(0xFF222B45),
              fontWeight: FontWeight.w500,
              fontSize: getDeviceWidth(context) * 0.05),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: greyColor,
        width: getDeviceWidth(context),
        height: getDeviceHight(context) * 0.9,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.04),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddressDetailCard(context,
                    title: 'Home',
                    isDefault: true,
                    address: '147 Kere Terrace, New York, US.'),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                AddressDetailCard(context,
                    title: 'Work',
                    isDefault: false,
                    address: '758 Ninja Way, New York, US.'),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                AddressDetailCard(context,
                    title: 'Company',
                    isDefault: false,
                    address: '602 Cazkup Trail, New York, US.'),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddNewAddressScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: SizeConfig.screenHeight! * 0.08,
                    width: SizeConfig.screenWidth! * 0.9,
                    color: Colors.white,
                    child: Center(
                      child: AutoSizeText(
                        'Add new Address',
                        style: subtitle(context).copyWith(
                            color: kPrimaryColor,
                            fontSize: getDeviceWidth(context) * 0.045),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget AddressDetailCard(BuildContext context,
      {String? title, bool? isDefault, String? address}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(SizeConfig.screenWidth! * 0.015),
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
                    title!,
                    style: subtitle(context).copyWith(
                        color: Color(0xFF8F9BB3),
                        fontSize: getDeviceWidth(context) * 0.035),
                  ),
                  AutoSizeText(
                    isDefault! ? 'Default Address' : "",
                    style: subtitle(context).copyWith(
                        color: kPrimaryColor,
                        fontSize: getDeviceWidth(context) * 0.035),
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
                                address!,
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
