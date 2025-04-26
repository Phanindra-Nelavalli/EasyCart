import 'package:easycart/pages/Cart_page.dart';
import 'package:easycart/pages/Home_page.dart';
import 'package:easycart/pages/Wishlist_page.dart';
import 'package:flutter/material.dart';
import './../constants.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 2;
  List Screens = [
    Scaffold(),
    WishlistPage(),
    HomePage(),
    CartPage(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentIndex = 2;
          });
        },
        shape: CircleBorder(),
        backgroundColor: kprimaryColor,
        child: Icon(Icons.home, size: 35, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 25,
                  color:
                      _currentIndex == 0 ? kprimaryColor : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite_outline,
                  size: 25,
                  color:
                      _currentIndex == 1 ? kprimaryColor : Colors.grey.shade400,
                ),
              ),
              const SizedBox(width: 15),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                  color:
                      _currentIndex == 3 ? kprimaryColor : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 25,
                  color:
                      _currentIndex == 4 ? kprimaryColor : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Screens[_currentIndex],
    );
  }
}
