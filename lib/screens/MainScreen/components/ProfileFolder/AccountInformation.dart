import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class AccountInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AutoSizeText(
          'Account Informations',
          style: subtitle(context).copyWith(
            fontWeight: FontWeight.w500,
            fontSize: getDeviceWidth(context) * 0.045,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: SizeConfig.screenHeight! * 0.9,
        width: SizeConfig.screenWidth!,
        color: greyColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.screenWidth! * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * 0.08,
                ),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.06,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * 0.04,
                ),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                          child: CustomInfoRow(context, text: 'Todd Benson')),
                      SizedBox(
                        height: SizeConfig.screenWidth! * 0.02,
                      ),
                      CustomInfoRow(context,
                          key: 'Email', text: 'Abcdef88@gmail.com'),
                      SizedBox(
                        height: SizeConfig.screenWidth! * 0.02,
                      ),
                      CustomInfoRow(context, key: 'Password', text: '********'),
                      SizedBox(
                        height: SizeConfig.screenWidth! * 0.02,
                      ),
                      CustomInfoRow(context,
                          key: 'Phone Number', text: '+1(234)40 5156 999'),
                      SizedBox(
                        height: SizeConfig.screenWidth! * 0.02,
                      ),
                      CustomInfoRow(context,
                          key: 'Date of Birth', text: 'Otc 15, 1997'),
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
    );
  }
}

Widget CustomInfoRow(BuildContext context,
    {String text = 'Account Informations',
    String key = 'Log out',
    IconData iconData = Icons.add_shopping_cart}) {
  return Card(
    elevation: 3,
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth! * 0.02,
        vertical: SizeConfig.screenWidth! * 0.045,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth! * 0.2,
            child: AutoSizeText(
              key,
              style: subtitle(context).copyWith(
                color: Color(0xFF8F9BB3),
                fontSize: getDeviceWidth(context) * 0.035,
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth! * 0.55,
            child: AutoSizeText(
              text,
              style: subtitle(context).copyWith(
                fontWeight: FontWeight.w500,
                fontSize: getDeviceWidth(context) * 0.035,
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth! * 0.08,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xFFEDF1F7),
            ),
          ),
        ],
      ),
    ),
  );
}
