import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import 'components/body.dart';

class ItemDetailPage extends StatefulWidget {
  static String routeName = "/ItemDetailPage";

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(),
    );
  }
}
