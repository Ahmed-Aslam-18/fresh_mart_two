import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class AddNewAddressScreen extends StatefulWidget {
  @override
  _AddNewAddressScreenState createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.screenHeight!,
          width: getDeviceWidth(context),
          child: Stack(
            children: [
              Container(
                height: SizeConfig.screenHeight! * 0.6,
                width: SizeConfig.screenWidth!,
                child: Image.asset(
                  'assets/images/Map.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: SizeConfig.screenHeight! * 0.55,
                  width: SizeConfig.screenWidth!,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SizeConfig.screenWidth! * 0.065),
                      topRight: Radius.circular(SizeConfig.screenWidth! * 0.065),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.screenWidth! * 0.035,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AutoSizeText(
                              'Clear',
                              style: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontSize: getDeviceWidth(context) * 0.04),
                            ),
                            AutoSizeText(
                              'Add new Address',
                              style: subtitle(context).copyWith(
                                  color: Color(0xFF222B45),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getDeviceWidth(context) * 0.045),
                            ),
                            AutoSizeText(
                              'Save',
                              style: subtitle(context).copyWith(
                                  color: kPrimaryColor,
                                  fontSize: getDeviceWidth(context) * 0.04),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.015,
                        ),
                        Container(
                          height: SizeConfig.screenHeight! * 0.08,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Color(0xFFF5F8FD),
                                width: SizeConfig.screenWidth! * 0.2,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.screenWidth! * 0.035),
                                    child: Icon(
                                      Icons.home_outlined,
                                      color: Color(0xFF121924),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: Color(0xFFF5F8FD),
                                width: SizeConfig.screenWidth! * 0.7,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: 'Name of Address',
                                    hintStyle: subtitle(context).copyWith(
                                        color: Color(0xFF8F9BB3),
                                        fontSize:
                                            getDeviceWidth(context) * 0.04),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.015,
                        ),
                        Container(
                          color: Color(0xFFF5F8FD),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: 'Your Address',
                              hintStyle: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontSize: getDeviceWidth(context) * 0.04),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.screenWidth! * 0.015),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(
                                      SizeConfig.screenWidth! * 0.025,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.015,
                        ),
                        Container(
                          color: greyColor,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: CountryCodePicker(
                                onChanged: print,
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'IT',
                                favorite: ['+39', 'FR'],
                                // optional. Shows only country name and flag
                                showCountryOnly: false,
                                // optional. Shows only country name and flag when popup is closed.
                                showOnlyCountryWhenClosed: false,
                                // optional. aligns the flag and the Text left
                                alignLeft: false,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: 'Phone Number',
                              hintStyle: subtitle(context).copyWith(
                                  color: Color(0xFF8F9BB3),
                                  fontSize: getDeviceWidth(context) * 0.04),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.015,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (val) {},
                              activeColor: kPrimaryColor,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth! * 0.025,
                            ),
                            AutoSizeText(
                              'Default Delivery Address',
                              style: subtitle(context).copyWith(
                                  color: Color(0xFF222B45),
                                  fontWeight: FontWeight.w500,
                                  fontSize: getDeviceWidth(context) * 0.045),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.screenHeight! * 0.05,
                child: Container(
                  color: Color(0xFFF5F8FD),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.06,
                      ),
                      Container(
                        color: Colors.white,
                        width: SizeConfig.screenWidth! * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: 'Type location you want..',
                            hintStyle: subtitle(context).copyWith(
                                color: Color(0xFF8F9BB3),
                                fontSize: getDeviceWidth(context) * 0.04),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.screenWidth! * 0.015),
                              child: Container(
                                height: SizeConfig.screenHeight! * 0.07,
                                width: SizeConfig.screenWidth! * 0.07,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(
                                    SizeConfig.screenWidth! * 0.025,
                                  ),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
