import 'package:easycart/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<Product> _favourites = [];
  List<Product> get favourite => _favourites;
  void toggleFavourite(Product product) {
    if (_favourites.contains(product)) {
      _favourites.remove(product);
    } else {
      _favourites.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product) {
    return _favourites.contains(product);
  }

   void removeItem(int index) {
    _favourites.removeAt(index);
    notifyListeners();
  }


  static FavouriteProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<FavouriteProvider>(context, listen: listen);
  }
}
