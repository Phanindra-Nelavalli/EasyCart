import 'package:easycart/components/Detail_page/details_appbar.dart';
import 'package:easycart/components/Detail_page/item_details.dart';
import 'package:easycart/components/Detail_page/myimage_slider.dart';
import 'package:easycart/constants.dart';
import 'package:easycart/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsAppbar(),
              MyimageSlider(
                image: widget.product.image,
                onChange:
                    (index) => {
                      setState(() {
                        currentImage = (index % 5).toInt();
                      }),
                    },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    height: 8,
                    width: currentImage == index ? 16 : 8,
                    margin: EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      color:
                          currentImage == index
                              ? Colors.black
                              : Colors.transparent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemDetails(product: widget.product)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
