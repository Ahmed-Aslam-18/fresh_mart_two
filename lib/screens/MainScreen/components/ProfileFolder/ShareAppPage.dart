import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../components/default_button.dart';
import '../../../../size_config.dart';


class ShareAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323061),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! * 0.035,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            Center(
              child: Container(
                width: SizeConfig.screenWidth! * 0.6,
                height: SizeConfig.screenHeight! * 0.3,
                child: Image.asset(
                  'assets/images/Wallet.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            AutoSizeText(
              'Refer to your Friend & Get of \$5 DynaDollars',
              style: subtitle(context).copyWith(
                fontWeight: FontWeight.bold,
                fontSize: getDeviceWidth(context) * 0.065,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            AutoSizeText(
              'When someone completed first job through DynaDot with your share link, you will get reward points.',
              textAlign: TextAlign.justify,
              style: subtitle(context).copyWith(
                fontSize: getDeviceWidth(context) * 0.045,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(right: SizeConfig.screenWidth! * 0.4),
              child: DefaultButton(
                text: 'Share Your Link',
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
