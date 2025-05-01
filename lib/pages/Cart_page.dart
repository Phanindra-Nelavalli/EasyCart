import 'package:easycart/Providers/cart_provider.dart';
import 'package:easycart/components/check_out.dart';
import 'package:easycart/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    ProductQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          if (icon == Icons.add) {
            provider.incrementQtn(index);
          } else {
            provider.decrementQtn(index);
          }
        },
        child: Icon(icon, size: 20),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                child: Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child:
                  finalList.isEmpty
                      ? Center(child: Text("Your cart is empty."))
                      : ListView.builder(
                        padding: EdgeInsets.only(bottom: 100),
                        itemCount: finalList.length,
                        itemBuilder: (context, index) {
                          final cartItem = finalList[index];
                          return Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: kcontentColor,
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(cartItem.image),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cartItem.title,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            cartItem.category,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "\$${cartItem.price}",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 35,
                                right: 35,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        provider.removeItem(index);
                                      },
                                      icon: Icon(
                                        CupertinoIcons.delete,
                                        size: 22,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: kcontentColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          ProductQuantity(Icons.remove, index),
                                          SizedBox(width: 10),
                                          Text(
                                            cartItem.quantity.toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          ProductQuantity(Icons.add, index),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) => Wrap(children: [CheckOut()]),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kprimaryColor,
                  minimumSize: Size(double.infinity, 55),
                ),
                child: Text(
                  "Proceed to Checkout",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
