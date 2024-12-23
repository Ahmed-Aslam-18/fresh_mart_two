import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../components/SearchItemCard.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: SizeConfig.screenHeight! * 0.02),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AutoSizeText(
                              'Search',
                              style: subtitle(context).copyWith(
                                color: Color(0xFF222B45),
                                fontWeight: FontWeight.w500,
                                fontSize: getDeviceWidth(context) * 0.055,
                              ),
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight! * 0.02),
                        ],
                      ),
                      SearchBar(),
                      SizedBox(height: SizeConfig.screenHeight! * 0.02),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getDeviceWidth(context) * 0.025),
                  child: GridView(
                    shrinkWrap: true,
                    controller: scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        crossAxisSpacing: getDeviceWidth(context) * 0.02,
                        mainAxisSpacing: getDeviceWidth(context) * 0.02),
                    children: [
                      SearchItemCard(),
                      SearchItemCard(),
                      SearchItemCard(),
                      SearchItemCard(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
            ],
          ),
        ),
      ),
    );
  }

  Widget ViewAll(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight! * 0.01,
      ),
      child: Container(
        width: SizeConfig.screenWidth! * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              text,
              style: subtitle(context).copyWith(
                color: Color(0xFF222B45),
                fontWeight: FontWeight.w500,
                fontSize: getDeviceWidth(context) * 0.05,
              ),
            ),
            AutoSizeText(
              'View All',
              style: subtitle(context).copyWith(
                color: kPrimaryColor,
                fontSize: getDeviceWidth(context) * 0.045,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SeachQuery(String val) {
    // setState(() {
    //   isSearching = true;
    // });
  }

  Widget SearchBar() {
    return Container(
      color: greyColor,
      child: TextField(
        onSubmitted: (val) {
          SeachQuery(val);
        },
        focusNode: focusNode,
        cursorColor: kPrimaryColor,
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(SizeConfig.screenWidth! * 0.03),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: "Find something...",
          hintStyle: subtitle(context).copyWith(
            color: Color(0xFF8F9BB3),
            fontSize: getDeviceWidth(context) * 0.04,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(SizeConfig.screenWidth! * 0.01),
            child: GestureDetector(
              onTap: () {
                SeachQuery(textEditingController.text);
              },
              child: Container(
                width: SizeConfig.screenWidth! * 0.06,
                height: SizeConfig.screenWidth! * 0.06,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      SizeConfig.screenWidth! * 0.02,
                    ),
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
    );
  }
}
