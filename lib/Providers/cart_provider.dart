import 'package:easycart/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;
  void toggleFavourite(Product product, int Quantity) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity += Quantity;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  void incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  void decrementQtn(int index) {
    if (_cart[index].quantity > 1) {
      _cart[index].quantity--;
      notifyListeners();
    }
  }

  double totalPrice() {
    double total = 0.0;
    for (Product element in _cart) {
      total += element.quantity * element.price;
    }
    return double.parse(total.toStringAsFixed(2));
  }

  void removeItem(int index) {
    _cart.removeAt(index);
    notifyListeners();
  }

  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
