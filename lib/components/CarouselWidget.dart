import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mart_two/size_config.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('assets/images/curosel.png'),
        Image.asset('assets/images/curosel2.png'),
        Image.asset('assets/images/curosel3.png')
      ],
      options: CarouselOptions(height: 200.0),
    );
  }
}
