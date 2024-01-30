import 'package:flutter/cupertino.dart';

import 'offerslider_item.dart';

class OfferSlider extends StatelessWidget {
  const OfferSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.62,
        scrollDirection: Axis.horizontal,
        children: [
          OfferSliderIteam(),
          OfferSliderIteam(),
          OfferSliderIteam(),
          OfferSliderIteam(),
        ],
      ),
    );
  }
}