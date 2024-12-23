import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth!,
          height: SizeConfig.screenHeight!,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: SizeConfig.screenWidth!,
                height: SizeConfig.screenHeight!,
                child: Image.asset(
                  'assets/images/Map.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * 0.08,
                  ),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(getDeviceWidth(context) * 0.025)),
                    ),
                    child: Container(
                      width: SizeConfig.screenWidth! * 0.9,
                      child: Padding(
                        padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.035),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                AutoSizeText(
                                  'Shipper Information',
                                  style: subtitle(context).copyWith(
                                      color: Color(0xFF8F9BB3),
                                      fontSize: getDeviceWidth(context) * 0.04),
                                ),
                                Container(
                                  width: 0,
                                  height: 0,
                                )
                              ],
                            ),
                            Divider(),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/Martin.png'),
                                radius: getDeviceWidth(context) * 0.08,
                              ),
                              title: AutoSizeText(
                                'Martin Schmidt',
                                style: subtitle(context).copyWith(
                                    color: Color(0xFF222B45),
                                    fontSize: getDeviceWidth(context) * 0.04),
                              ),
                              subtitle: AutoSizeText(
                                '+1(234)82 4476 512',
                                style: subtitle(context).copyWith(
                                    color: Color(0xFF8F9BB3),
                                    fontSize: getDeviceWidth(context) * 0.03),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: SizeConfig.screenWidth! * 0.08,
                                    height: SizeConfig.screenWidth! * 0.08,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          SizeConfig.screenWidth! * 0.02,
                                        ),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.screenWidth! * 0.025,
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth! * 0.08,
                                    height: SizeConfig.screenWidth! * 0.08,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF42AAFF),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          SizeConfig.screenWidth! * 0.02,
                                        ),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.message,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText(
                                  'Estimated Time',
                                  style: subtitle(context).copyWith(
                                      color: Color(0xFF222B45),
                                      fontSize: getDeviceWidth(context) * 0.04),
                                ),
                                AutoSizeText(
                                  '42 mins',
                                  style: subtitle(context).copyWith(
                                      color: Color(0xFF222B45),
                                      fontSize: getDeviceWidth(context) * 0.04),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.location_on,
                color: Colors.red,
                size: getDeviceHight(context) * 0.12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
