import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomsheet.dart';
import 'item_card.dart';
import 'menu.dart';
import 'offer_slider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Container(
          height: 50.0,
          width: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/flipkart-plus_8d85f4.png'),
                fit: BoxFit.contain,
              )),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      bottomSheet: BottomSheetContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 5.0,
            ),
            MenuStripe(),
            // SizedBox(
            //   height: 5.0,
            // ),
            OfferSlider(),
            // SizedBox(
            //   height: 5.0,
            // ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  ItemsCard(),
                  ItemsCard(
                    imageUrl: 'assets/electronic.png',
                    offer: 'Min. 60% off',
                  ),
                  ItemsCard(
                    imageUrl: 'assets/mobiles.png',
                    offer: 'Min. 30% off',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discounts for You',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Center(
                          child: Text(
                            'View all',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 350.0,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: ItemsCard()),
                        Expanded(
                          child: ItemsCard(
                            imageUrl: 'assets/electronic.png',
                            offer: 'Min. 60% off',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ItemsCard(
                            imageUrl: 'assets/fashion.png',
                            offer: 'Min. 60% off',
                          ),
                        ),
                        Expanded(
                            child: ItemsCard(
                              imageUrl: 'assets/Grocery.png',
                              offer: 'Min. 20% off',
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            OfferSlider(),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  ItemsCard(),
                  ItemsCard(
                    imageUrl: 'assets/electronic.png',
                    offer: 'Min. 60% off',
                  ),
                  ItemsCard(
                    imageUrl: 'assets/mobiles.png',
                    offer: 'Min. 30% off',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
