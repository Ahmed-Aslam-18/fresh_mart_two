import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import '../../constants.dart';
import '../../size_config.dart';
import 'components/body.dart';

class CategoryDetailPage extends StatefulWidget {
  static String routeName = "/CategoryDetailPage";

  @override
  _CategoryDetailPageState createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, initialIndex: 0, length: 7);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              unselectedLabelColor: Color(0xFF8F9BB3),
              labelColor: kPrimaryColor,
              indicatorColor: kPrimaryColor,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'For You',
                ),
                Tab(
                  text: 'Apple',
                ),
                Tab(
                  text: 'Banana',
                ),
                Tab(
                  text: 'Watermelon',
                ),
                Tab(
                  text: 'Apple',
                ),
                Tab(
                  text: 'Banana',
                ),
              ],
            ),
            title: AutoSizeText(
              'Fruits',
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
              Body(),
              Body(),
              Body(),
              Body(),
              Body(),
              Body(),
              Body(),
            ],
          ),
        ));
  }
}
