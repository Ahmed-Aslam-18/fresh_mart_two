import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import '../../../components/FavouriteMealCard.dart';
import '../../../components/SearchItemCard.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class FavourtiesScreen extends StatefulWidget {
  @override
  _FavourtiesScreenState createState() => _FavourtiesScreenState();
}

class _FavourtiesScreenState extends State<FavourtiesScreen>
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
            leading: Container(
              width: 0,
              height: 0,
            ),
            bottom: TabBar(
              controller: _tabController,
              unselectedLabelColor: Color(0xFF8F9BB3),
              labelColor: kPrimaryColor,
              indicatorColor: kPrimaryColor,
              tabs: [
                Tab(
                  text: 'Ingredients',
                ),
                Tab(
                  text: 'Meals',
                ),
              ],
            ),
            title: AutoSizeText(
              'Favorites',
              style: subtitle(context).copyWith(
                  color: Color(0xFF222B45),
                  fontWeight: FontWeight.bold,
                  fontSize: getDeviceWidth(context) * 0.05),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              favouriteItem(),
              favouriteMeals(),
            ],
          ),
        ));
  }

  Widget favouriteItem() {
    return Container(
      color: greyColor,
      child: Padding(
        padding: EdgeInsets.all(getDeviceWidth(context) * 0.025),
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: getDeviceWidth(context) * 0.02,
              mainAxisSpacing: getDeviceWidth(context) * 0.02),
          children: [
            SearchItemCard(
              isfavourite: true,
            ),
            SearchItemCard(
              isfavourite: true,
            ),
            SearchItemCard(
              isfavourite: true,
            ),
            SearchItemCard(
              isfavourite: true,
            ),
            SearchItemCard(
              isfavourite: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget favouriteMeals() {
    return Container(
      color: greyColor,
      child: Padding(
        padding: EdgeInsets.all(getDeviceWidth(context) * 0.025),
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              crossAxisSpacing: getDeviceWidth(context) * 0.02,
              mainAxisSpacing: getDeviceWidth(context) * 0.02),
          children: [
            FavouriteMealCard(
              isfavourite: true,
            ),
            FavouriteMealCard(
              isfavourite: true,
            ),
            FavouriteMealCard(
              isfavourite: true,
            ),
            FavouriteMealCard(
              isfavourite: true,
            ),
            FavouriteMealCard(
              isfavourite: true,
            ),
          ],
        ),
      ),
    );
  }
}
