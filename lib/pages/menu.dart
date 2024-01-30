import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuStripe extends StatelessWidget {
  const MenuStripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(color: Colors.white),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                )
              ],
            ),
          ),
          MenuStripeIteam(),
          MenuStripeIteam(
            imageUrl: 'mobiles',
            iteamLabel: 'Mobiles',
          ),
          MenuStripeIteam(imageUrl: 'applience', iteamLabel: 'Appliences'),
          MenuStripeIteam(
            imageUrl: 'electronic',
            iteamLabel: 'Electronics',
          ),
          MenuStripeIteam(
            imageUrl: 'fashion',
            iteamLabel: 'Fashion',
          ),
          MenuStripeIteam(
            imageUrl: 'Grocery',
            iteamLabel: 'Grocery',
          ),
        ],
      ),
    );
  }
}