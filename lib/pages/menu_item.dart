import 'package:flutter/cupertino.dart';

class MenuStripeIteam extends StatelessWidget {
  final String? imageUrl;
  final String? iteamLabel;

  const MenuStripeIteam({Key? key, this.imageUrl, this.iteamLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/${imageUrl ?? 'topoffers'}.png'))),
        ),
        Text(
          iteamLabel ?? 'Top Offers',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
        )
      ],
    );
  }
}