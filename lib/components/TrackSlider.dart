import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../constants.dart';
import '../size_config.dart';

class TrackSlider extends StatelessWidget {
  const TrackSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TimelineTile(
            startChild: Container(
              width: SizeConfig.screenWidth! * 0.2,
              child: Center(
                child: AutoSizeText(
                  'Done',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF8F9BB3),
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              ),
            ),
            endChild: Container(
              width: 0,
            ),
            beforeLineStyle: LineStyle(
              color: kPrimaryColor,
            ),
            afterLineStyle: LineStyle(
              color: kPrimaryColor,
            ),
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            isFirst: true,
            indicatorStyle: IndicatorStyle(
              color: kPrimaryColor,
            ),
          ),
          TimelineTile(
            startChild: Container(
              width: SizeConfig.screenWidth! * 0.2,
              child: Center(
                child: AutoSizeText(
                  'Arrange',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF8F9BB3),
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              ),
            ),
            endChild: Container(
              width: 0,
            ),
            beforeLineStyle: LineStyle(
              color: kPrimaryColor,
            ),
            afterLineStyle: LineStyle(
              color: kPrimaryColor,
            ),
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            indicatorStyle: IndicatorStyle(
              color: kPrimaryColor,
            ),
          ),
          TimelineTile(
            startChild: Container(
              width: SizeConfig.screenWidth! * 0.2,
              child: Center(
                child: AutoSizeText(
                  'Shipping',
                  style: subtitle(context).copyWith(
                      color: kPrimaryColor,
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              ),
            ),
            endChild: Container(
              width: 0,
            ),
            beforeLineStyle: LineStyle(
              color: kPrimaryColor,
            ),
            afterLineStyle: LineStyle(
              color: Color(0xFFEDF1F7),
            ),
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            indicatorStyle: IndicatorStyle(
              color: kPrimaryColor,
              indicatorXY: 0.5,
            ),
          ),
          TimelineTile(
            startChild: Container(
              width: SizeConfig.screenWidth! * 0.2,
              child: Center(
                child: AutoSizeText(
                  'Done',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF8F9BB3),
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              ),
            ),
            endChild: Container(
              width: 0,
            ),
            beforeLineStyle: LineStyle(
              color: Color(0xFFEDF1F7),
            ),
            afterLineStyle: LineStyle(
              color: kPrimaryColor,
            ),
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            isLast: true,
            indicatorStyle: IndicatorStyle(
              color: Color(0xFFEDF1F7),
            ),
          ),
        ],
      ),
    );
  }
}
