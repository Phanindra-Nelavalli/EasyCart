import 'package:easycart/Providers/favourite_provider.dart';
import 'package:easycart/models/product.dart';
import 'package:flutter/material.dart';

class DetailsAppbar extends StatelessWidget {
  final Product product;
  const DetailsAppbar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(10),
              iconSize: 20,
              shape: CircleBorder(),
              elevation: 2,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share_outlined),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(10),
              iconSize: 20,
              shape: CircleBorder(),
              elevation: 2,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {
              provider.toggleFavourite(product);
            },
            icon:
                provider.isExist(product)
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_outline),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(10),
              iconSize: 20,
              shape: CircleBorder(),
              elevation: 2,
            ),
          ),
        ],
      ),
    );
  }
}
