import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../components/AddressCard.dart';
import '../../../../components/DetailOrderCard.dart';
import '../../../../components/default_button.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Check Out',
          style: subtitle(context).copyWith(
              color: Color(0xFF222B45),
              fontWeight: FontWeight.w500,
              fontSize: getDeviceWidth(context) * 0.05),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: getDeviceWidth(context),
        height: getDeviceHight(context) * 0.9,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.04),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Order ID',
                      style: subtitle(context).copyWith(
                          color: Color(0xFF8F9BB3),
                          fontSize: getDeviceWidth(context) * 0.04),
                    ),
                    AutoSizeText(
                      '#OD2204',
                      style: subtitle(context).copyWith(
                          color: kPrimaryColor,
                          fontSize: getDeviceWidth(context) * 0.04),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                AddressCard(),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                DeliveryTimeSetting(context),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                DetailOrderCard(),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                MyPaymentColumn(),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
                AddNoteWidget(context),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.025,
                ),
                DefaultButton(
                  text: 'Confirm Order',
                  press: () {
                    confirmDialog();
                  },
                ),
                SizedBox(
                  height: SizeConfig.screenWidth! * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  confirmDialog() {
    Dialog dialog = Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.screenWidth! * 0.02),
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.025),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Color(0xFF222B45),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(
              height: SizeConfig.screenWidth! * 0.015,
            ),
            AutoSizeText(
              'Order Success',
              style: subtitle(context).copyWith(
                  color: Color(0xFF222B45),
                  fontSize: getDeviceWidth(context) * 0.04),
            ),
            SizedBox(
              height: SizeConfig.screenWidth! * 0.01,
            ),
            Container(
              width: SizeConfig.screenWidth! * 0.7,
              child: AutoSizeText(
                'Your order is being processed by the system, you can see the progress at',
                textAlign: TextAlign.center,
                style: subtitle(context).copyWith(
                    color: Color(0xFF8F9BB3),
                    fontSize: getDeviceWidth(context) * 0.035),
              ),
            ),
            AutoSizeText(
              'My Order',
              style: subtitle(context).copyWith(
                  color: kPrimaryColor,
                  decoration: TextDecoration.underline,
                  fontSize: getDeviceWidth(context) * 0.04),
            ),
            SizedBox(
              height: SizeConfig.screenWidth! * 0.01,
            ),
            Container(
              width: SizeConfig.screenWidth! * 0.5,
              height: SizeConfig.screenHeight! * 0.35,
              child: Image.asset(
                'assets/images/Group721.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (context) => dialog);
  }

  Widget DeliveryTimeSetting(BuildContext context) {
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
                    'Delivery Time Settings',
                    style: subtitle(context).copyWith(
                        color: Color(0xFF8F9BB3),
                        fontSize: getDeviceWidth(context) * 0.04),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.025,
              ),
              Container(
                height: SizeConfig.screenWidth! * 0.1,
                color: Color(0xFFF5F8FD),
                child: Row(
                  children: [
                    Container(
                      width: SizeConfig.screenWidth! * 0.75,
                      child: TextField(
                        controller: timeController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          enabled: false,
                          hintText: '    Time Slot',
                          contentPadding: EdgeInsets.all(0),
                          hintStyle: subtitle(context).copyWith(
                              color: Color(0xFF8F9BB3),
                              fontSize: getDeviceWidth(context) * 0.04),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );

                        setState(() {
                          timeController.text = time!.format(context);
                        });
                      },
                      child: Icon(
                        Icons.timer_sharp,
                        color: Color(0xFF8F9BB3),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.025,
              ),
              Container(
                height: SizeConfig.screenWidth! * 0.1,
                color: Color(0xFFF5F8FD),
                child: Row(
                  children: [
                    Container(
                      width: SizeConfig.screenWidth! * 0.75,
                      child: TextField(
                        controller: dateController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          enabled: false,
                          hintText: '    Jan 01, 2020',
                          contentPadding: EdgeInsets.all(0),
                          hintStyle: subtitle(context).copyWith(
                              color: Color(0xFF8F9BB3),
                              fontSize: getDeviceWidth(context) * 0.04),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2010),
                          lastDate: DateTime(2030),
                        );

                        setState(() {
                          dateController.text =
                              date!.toString().substring(0, 10);
                        });
                      },
                      child: Icon(
                        Icons.calendar_today,
                        color: Color(0xFF8F9BB3),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget AddNoteWidget(BuildContext context) {
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
                    'Note',
                    style: subtitle(context).copyWith(
                        color: Color(0xFF8F9BB3),
                        fontSize: getDeviceWidth(context) * 0.04),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.025,
              ),
              Container(
                height: SizeConfig.screenWidth! * 0.1,
                child: Container(
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Type Something you want here....',
                      contentPadding: EdgeInsets.all(0),
                      hintStyle: subtitle(context).copyWith(
                          color: Color(0xFF8F9BB3),
                          fontSize: getDeviceWidth(context) * 0.04),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenWidth! * 0.045,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String PaymentMethod = 'Master';

  Widget MyPaymentColumn() {
    return Card(
      elevation: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Payment Method',
                  style: subtitle(context).copyWith(
                      color: Color(0xFF8F9BB3),
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
                AutoSizeText(
                  'Add new method',
                  style: subtitle(context).copyWith(
                      color: kPrimaryColor,
                      fontSize: getDeviceWidth(context) * 0.04),
                ),
              ],
            ),
          ),
          Divider(),
          Row(
            children: [
              CustomRow(
                  first: Container(
                    width: SizeConfig.screenWidth! * 0.08,
                    height: SizeConfig.screenWidth! * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          SizeConfig.screenWidth! * 0.02,
                        ),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/Visa.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  second: AutoSizeText(
                    '**** **** **** *368',
                    style: subtitle(context).copyWith(
                        fontSize: getDeviceWidth(context) * 0.04,
                        color: Color(0xFF222B45)),
                  ),
                  wide: SizeConfig.screenWidth! * 0.75),
              Radio(
                value: 'Master',
                groupValue: PaymentMethod,
                onChanged: (val) {
                  setState(() {
                    PaymentMethod = val as String;
                  });
                },
                activeColor: kPrimaryColor,
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              CustomRow(
                  first: Container(
                    width: SizeConfig.screenWidth! * 0.08,
                    height: SizeConfig.screenWidth! * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          SizeConfig.screenWidth! * 0.02,
                        ),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/mastercard-2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  second: AutoSizeText(
                    '**** **** **** *368',
                    style: subtitle(context).copyWith(
                        fontSize: getDeviceWidth(context) * 0.04,
                        color: Color(0xFF222B45)),
                  ),
                  wide: SizeConfig.screenWidth! * 0.75),
              Radio(
                value: 'Visa',
                groupValue: PaymentMethod,
                onChanged: (val) {
                  setState(() {
                    PaymentMethod = val as String;
                  });
                },
                activeColor: kPrimaryColor,
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              CustomRow(
                  second: Container(
                    width: 0,
                    height: 0,
                  ),
                  first: AutoSizeText(
                    'Payment Online',
                    style: subtitle(context).copyWith(
                      fontSize: getDeviceWidth(context) * 0.035,
                      color: Color(0xFF8F9BB3),
                    ),
                  ),
                  wide: SizeConfig.screenWidth! * 0.75),
              Radio(
                value: 'Online',
                groupValue: PaymentMethod,
                onChanged: (val) {
                  setState(() {
                    PaymentMethod = val as String;
                  });
                },
                activeColor: kPrimaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget CustomRow({Widget? first, Widget? second, double? wide}) {
    return Container(
      color: Colors.white,
      width: wide,
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                first!,
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.035,
                ),
                second!,
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xFFEDF1F7),
            ),
          ],
        ),
      ),
    );
  }
}
