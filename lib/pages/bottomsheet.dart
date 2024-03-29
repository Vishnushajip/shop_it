import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.shop_rounded,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.polymer,
            color: Colors.deepPurple,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.grid_view,
                  color: Colors.white,
                ),
              )),
          Icon(
            Icons.video_call,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.videogame_asset,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}