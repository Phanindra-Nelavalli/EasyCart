import 'package:easycart/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kcontentColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Icon(Icons.search_outlined, size: 30, color: Colors.grey.shade500),
          SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 19),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(height: 30, color: Colors.grey.shade500, width: 1.5),
          SizedBox(width: 5),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune, size: 25, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}
