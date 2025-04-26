class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Shoes", image: "assets/images/Shoes.jpg"),
  Category(title: "Beauty", image: "assets/images/Beauty.jpg"),
  Category(title: "Women's\nFashions", image: "assets/images/Womens.jpg"),
  Category(title: "Jwellery", image: "assets/images/Jwellery.jpg"),
  Category(title: "Mens's\nFashons", image: "assets/images/Mens.jpg"),
];
