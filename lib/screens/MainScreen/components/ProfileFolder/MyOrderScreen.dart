import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../components/OrderCard.dart';
import '../../../../components/default_button.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
import 'OrderDetailPage.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              unselectedLabelColor: Color(0xFF8F9BB3),
              labelColor: kPrimaryColor,
              indicatorColor: kPrimaryColor,
              tabs: [
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Complete',
                ),
              ],
            ),
            title: AutoSizeText(
              'My Order',
              style: subtitle(context).copyWith(
                  color: Color(0xFF222B45),
                  fontWeight: FontWeight.w500,
                  fontSize: getDeviceWidth(context) * 0.05),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              OngoingOrderView(),
              CompleteOrderView(),
            ],
          ),
        ));
  }

  Widget OngoingOrderView() {
    return SingleChildScrollView(
      child: Container(
        color: greyColor,
        child: Padding(
          padding: EdgeInsets.all(
            SizeConfig.screenWidth! * 0.08,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrderDetailPage()));
                  },
                  child: OrderCard()),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrderDetailPage()));
                },
                child: OrderCard(
                  Status: 'Pending',
                ),
              ),
              DefaultButton(
                press: () {},
                text: 'Go to Shopping',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CompleteOrderView() {
    return SingleChildScrollView(
      child: Container(
        color: greyColor,
        child: Padding(
          padding: EdgeInsets.all(
            SizeConfig.screenWidth! * 0.08,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OrderCard(
                Status: 'Complete',
              ),
              OrderCard(
                Status: 'Complete',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
