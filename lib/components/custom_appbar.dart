import 'package:flutter/material.dart';
import './../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(12),
          ),
          icon: Image.asset("assets/images/icon.png", height: 25),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined),
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(12),
            iconSize: 25,
          ),
        ),
      ],
    );
  }
}