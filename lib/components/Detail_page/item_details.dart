import 'package:easycart/constants.dart';
import 'package:easycart/models/product.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            product.rate.toString(),
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      product.review,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Seller:  ", style: TextStyle(fontSize: 16)),
                  TextSpan(
                    text: product.seller,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
