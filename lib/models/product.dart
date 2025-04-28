import 'package:flutter/material.dart';

class Product {
  final String title;
  final String Description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.Description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    this.quantity = 1,
  });
}

List<Product> products = [
  Product(
    title: 'Wireless Headphones',
    Description: 'High-quality wireless headphones with noise cancellation.',
    image: 'assets/images/Wireless.png',
    review: '(120 reviews)',
    seller: 'AudioTech',
    price: 99.99,
    colors: [Colors.black, Colors.blue, Colors.red],
    category: 'Electronics',
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: 'Running Shoes',
    Description: 'Comfortable and durable running shoes for all terrains.',
    image: 'assets/images/RShoes.png',
    review: '(159 reviews)',
    seller: 'Sportify',
    price: 79.99,
    colors: [Colors.black, Colors.green, Colors.white],
    category: 'Footwear',
    rate: 4.3,
    quantity: 1,
  ),
  Product(
    title: 'Smart Watch',
    Description: 'Track your fitness, heart rate, and notifications.',
    image: 'assets/images/Watch.png',
    review: '(97 reviews)',
    seller: 'TechWear',
    price: 149.99,
    colors: [Colors.grey, Colors.black, Colors.pink],
    category: 'Wearables',
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: 'Leather Backpack',
    Description: 'Premium leather backpack for everyday use.',
    image: 'assets/images/Backpack.png',
    review: '(210 reviews)',
    seller: 'Urban Bags',
    price: 120.00,
    colors: [Colors.brown, Colors.black],
    category: 'Accessories',
    rate: 4.6,
    quantity: 1,
  ),
  Product(
    title: 'Sunglasses',
    Description: 'Stylish polarized sunglasses to protect your eyes.',
    image: 'assets/images/Sunglasses.png',
    review: '(431 reviews)',
    seller: 'SunStyle',
    price: 45.50,
    colors: [Colors.black, Colors.blue],
    category: 'Accessories',
    rate: 4.4,
    quantity: 1,
  ),
];
