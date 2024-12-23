import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../CartFolder/ChangeAddressScreen.dart';
import 'AccountInformation.dart';
import 'MyOrderScreen.dart';
import 'PaymentMethodsScreen.dart';
import 'ShareAppPage.dart';
import 'WalletPage.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          height: 0.9,
          color: greyColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: SizeConfig.screenHeight! * 0.3,
                  width: SizeConfig.screenWidth!,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: SizeConfig.screenHeight! * 0.08,
                            backgroundImage:
                                AssetImage('assets/images/Todd.png'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: kPrimaryColor,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    SizeConfig.screenWidth! * 0.01),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      AutoSizeText(
                        'Todd Benson',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF222B45),
                          fontWeight: FontWeight.w500,
                          fontSize: getDeviceWidth(context) * 0.05,
                        ),
                      ),
                      AutoSizeText(
                        'Abcdef88@gmail.com',
                        style: subtitle(context).copyWith(
                          color: Color(0xFF8F9BB3),
                          fontSize: getDeviceWidth(context) * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.06,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * 0.08,
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AccountInformation(),
                                ),
                              );
                            },
                            child: CustomRow(iconData: Icons.search)),
                        Divider(),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MyOrderScreen(),
                                ),
                              );
                            },
                            child: CustomRow(
                                text: 'My Order', iconData: Icons.email)),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PaymentMethodsScreen(),
                              ),
                            );
                          },
                          child: CustomRow(
                              text: 'Payment Method', iconData: Icons.keyboard),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ChangeAddressScreen(),
                              ),
                            );
                          },
                          child: CustomRow(
                              text: 'Delivery Addresses',
                              iconData: Icons.location_on),
                        ),
                        Divider(),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => WalletPage(),
                                ),
                              );
                            },
                            child: CustomRow(
                                text: 'Wallet', iconData: Icons.keyboard)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.06,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * 0.08,
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomRow(text: 'Setting', iconData: Icons.settings),
                        Divider(),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ShareAppPage(),
                                ),
                              );
                            },
                            child: CustomRow(
                                text: 'Share App', iconData: Icons.ios_share)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.06,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * 0.08,
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CustomRow(
                                text: 'Log Out', iconData: Icons.logout)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.06,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomRow(
      {String text = 'Account Informations',
      IconData iconData = Icons.add_shopping_cart}) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                  iconData,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.035,
              ),
              AutoSizeText(
                text,
                style: subtitle(context).copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: getDeviceWidth(context) * 0.045,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xFFEDF1F7),
          ),
        ],
      ),
    );
  }
}
