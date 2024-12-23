import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import '../../../../components/DetailOrderCard.dart';
import '../../../../components/TrackSlider.dart';
import '../../../../components/default_button.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import 'MapPage.dart';

class OrderDetailPage extends StatefulWidget {
  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          '#OD2204',
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: SizeConfig.screenWidth! * 0.08,
              ),
              Container(
                color: Colors.white,
                width: getDeviceWidth(context) * 0.9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: getDeviceHight(context) * 0.15,
                        child: TrackSlider()),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.screenWidth! * 0.1),
                      child: DefaultButton(
                        text: 'Track Map',
                        press: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MapPage()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: getDeviceHight(context) * 0.025,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.08,
              ),
              DetailOrderCard(),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
