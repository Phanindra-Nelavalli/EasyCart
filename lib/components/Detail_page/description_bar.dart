import 'package:easycart/constants.dart';
import 'package:flutter/material.dart';

class DescriptionBar extends StatefulWidget {
  final List<String> productDetails;
  const DescriptionBar({super.key, required this.productDetails});

  @override
  State<DescriptionBar> createState() => _DescriptionBarState();
}

class _DescriptionBarState extends State<DescriptionBar> {
  int currentIndex = 0;
  List<String> details = ["Description", "Specification", "Reviews"];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            details.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child:
                  currentIndex == index
                      ? Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kprimaryColor,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          details[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                      : Text(
                        details[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Text(widget.productDetails[currentIndex], style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
