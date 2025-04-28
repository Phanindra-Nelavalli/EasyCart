import 'package:flutter/material.dart';

class MyimageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const MyimageSlider({
    super.key,
    required this.image,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Image.asset(image);
        },
      ),
    );
  }
}
