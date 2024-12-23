import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'CategoryBox.dart';

class OrderCard extends StatefulWidget {
  String orderId;
  int noOfItems;
  double totalprice;
  String Status;

  OrderCard(
      {this.orderId = '#OD2204',
      this.noOfItems = 12,
      this.totalprice = 66.73,
      this.Status = 'Shipping'});

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: SizeConfig.screenWidth! * 0.08,
      ),
      child: Container(
        width: SizeConfig.screenWidth! * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(getDeviceWidth(context) * 0.045)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomRow(
              first: AutoSizeText(
                'Order ID',
                style: subtitle(context).copyWith(
                    color: Color(0xFF8F9BB3),
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
              second: AutoSizeText(
                widget.orderId,
                style: subtitle(context).copyWith(
                    color: kPrimaryColor,
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
            ),
            Divider(),
            CustomRow(
              first: AutoSizeText(
                'Order List',
                style: subtitle(context).copyWith(
                    color: Color(0xFF8F9BB3),
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
              second: AutoSizeText(
                '${widget.noOfItems} Items',
                style: subtitle(context).copyWith(
                    color: Color(0xFF222B45),
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
            ),
            Divider(),
            CustomRow(
              first: AutoSizeText(
                'Total Bill',
                style: subtitle(context).copyWith(
                    color: Color(0xFF8F9BB3),
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
              second: AutoSizeText(
                '\$${widget.totalprice}',
                style: subtitle(context).copyWith(
                    color: kPrimaryColor,
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
            ),
            Divider(),
            CustomRow(
              first: AutoSizeText(
                'Status',
                style: subtitle(context).copyWith(
                    color: Color(0xFF8F9BB3),
                    fontSize: getDeviceWidth(context) * 0.04),
              ),
              second: CategoryBox(
                text: widget.Status,
                color: widget.Status == 'Pending'
                    ? Color(0xFFFF8900)
                    : widget.Status == 'Complete'
                        ? kPrimaryColor
                        : Color(0xFF0095FF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomRow({Widget? first, Widget? second}) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          first!,
          second!,
        ],
      ),
    );
  }
}
