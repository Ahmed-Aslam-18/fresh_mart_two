import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AutoSizeText(
          'Wallet',
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! * 0.04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                Container(
                  width: SizeConfig.screenWidth! * 0.9,
                  height: SizeConfig.screenHeight! * 0.35,
                  child: Image.asset(
                    'assets/images/Wallet.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.06,
                ),
                Container(
                  width: SizeConfig.screenWidth! * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WalletBox(context,
                          title: 'Payment Online', value: '\$344'),
                      WalletBox(context,
                          title: 'Recent Transactions', value: 'View'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget WalletBox(BuildContext context, {String? title, String? value}) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth! * 0.025),
      ),
      child: Container(
        width: SizeConfig.screenWidth! * 0.4,
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.025),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoSizeText(
                title!,
                style: subtitle(context).copyWith(
                  fontSize: getDeviceWidth(context) * 0.045,
                  color: Color(0xFF222B45),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.025,
              ),
              AutoSizeText(
                value!,
                style: subtitle(context).copyWith(
                  fontSize: getDeviceWidth(context) * 0.045,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
