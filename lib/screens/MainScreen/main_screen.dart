import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/CartFolder/CartScreen.dart';
import 'components/FavourtiesScreen.dart';
import 'components/ProfileFolder/ProfileScreen.dart';
import 'components/SearchScreen.dart';
import 'components/mainBody.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/MainScreen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: currentIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            currentIndex = page;
          });
        },
        children: [
          MainBody(),
          SearchScreen(),
          CartScreen(),
          FavourtiesScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              currentIndex = val;
              _pageController.jumpToPage(currentIndex);
            });
          },
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Color(0xFFC5CEE0),
          selectedLabelStyle: subtitle(context)
              .copyWith(fontSize: SizeConfig.screenWidth! * 0.035),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: subtitle(context)
              .copyWith(fontSize: SizeConfig.screenWidth! * 0.035),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
