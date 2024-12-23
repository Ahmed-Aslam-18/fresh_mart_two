import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../components/default_button.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class PaymentMethodsScreen extends StatefulWidget {
  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AutoSizeText(
          'Payment Method',
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'My Payment Method',
                    style: subtitle(context).copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: getDeviceWidth(context) * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                MyPaymentColumn(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    'Add new Method',
                    style: subtitle(context).copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: getDeviceWidth(context) * 0.045,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                NewPaymentColumn(),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                DefaultButton(
                  text: 'Add new Method',
                  press: () {},
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.06,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String PaymentMethod = 'Master';

  Widget MyPaymentColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
        SizedBox(
          height: SizeConfig.screenHeight! * 0.02,
        ),
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
        SizedBox(
          height: SizeConfig.screenHeight! * 0.02,
        ),
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
    );
  }

  Widget NewPaymentColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
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
              'Visa Card',
              style: subtitle(context).copyWith(
                  fontSize: getDeviceWidth(context) * 0.04,
                  color: Color(0xFF222B45)),
            ),
            wide: SizeConfig.screenWidth! * 0.9),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.02,
        ),
        CustomRow(
            first: Container(
              width: 0,
              height: 0,
            ),
            second: Container(
                width: SizeConfig.screenWidth! * 0.75,
                child: SmallTextField('Card Number')),
            wide: SizeConfig.screenWidth! * 0.9),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomRow(
                first: Container(
                  width: 0,
                  height: 0,
                ),
                second: Container(
                    width: SizeConfig.screenWidth! * 0.25,
                    child: SmallTextField('Valid thru')),
                wide: SizeConfig.screenWidth! * 0.4),
            CustomRow(
                first: Container(
                  width: 0,
                  height: 0,
                ),
                second: Container(
                    width: SizeConfig.screenWidth! * 0.25,
                    child: SmallTextField('CVV')),
                wide: SizeConfig.screenWidth! * 0.4),
          ],
        ),
      ],
    );
  }

  Widget SmallTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: hint,
        hintStyle: subtitle(context).copyWith(
          fontSize: getDeviceWidth(context) * 0.04,
          color: Color(0xFF8F9BB3),
        ),
      ),
    );
  }

  Widget CustomRow({Widget? first, Widget? second, double? wide}) {
    return Card(
      elevation: 3,
      child: Container(
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
      ),
    );
  }
}
