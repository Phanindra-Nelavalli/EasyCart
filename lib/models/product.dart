import 'package:flutter/material.dart';

class Product {
  final String title;
  final List<String> productDetails; 
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
    required this.productDetails,
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
    productDetails: [
      'Immerse yourself in high-fidelity sound with our premium Wireless Headphones. Designed for audiophiles and casual listeners alike, these headphones offer a rich and immersive soundstage, enhanced by Active Noise Cancellation (ANC) to block out ambient noise. Whether you are at the gym, commuting, or just unwinding at home, these headphones will deliver crystal-clear audio and deep bass, elevating your listening experience. Featuring a foldable design, they are travel-friendly, and with up to 30 hours of battery life, you won’t have to worry about frequent recharges. Bluetooth 5.0 ensures seamless and stable connection to your devices.',
      
      'Connectivity:\n• Bluetooth 5.0 for stable and seamless connection\n• Built-in microphone for clear calls\n• Fast USB-C charging for quick power-ups\n\nAudio Quality:\n• Active Noise Cancellation (ANC) for immersive sound\n• Premium audio with crisp highs and deep bass\n• High-fidelity sound for a premium listening experience\n\nDesign & Comfort:\n• Foldable design for easy storage and portability\n• Soft ear cushions for long-lasting comfort\n• Adjustable headband for a perfect fit\n\nBattery Life:\n• 30-hour playback time on a single charge\n• Quick charge: 10 minutes for 2 hours of playback\n\nAdditional Features:\n• Lightweight and portable\n• Built-in controls for easy playback and call management\n• Compatible with all Bluetooth-enabled devices',
      
      '★ Great sound quality and excellent battery backup.\n★ Value for money with premium look and feel.\n★ Noise cancellation works well in moderate surroundings.\n★ Build quality feels sturdy, ear cushions very soft.\n★ Bluetooth range is good, no frequent disconnection.\n★ Only downside: slight weight after 2-3 hours usage.\n★ Overall very satisfied — highly recommended!'
    ],
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
    productDetails: [
      'Achieve your personal best with our lightweight Running Shoes, crafted for ultimate comfort and performance. These shoes are designed to handle various terrains, whether you’re running on the treadmill, pavement, or trail. Featuring breathable mesh for improved airflow, responsive cushioning for enhanced comfort, and a non-slip rubber outsole for superior grip, these shoes ensure you stay supported with every stride. With a stylish design and multiple color options, you can look good while running your best. Ideal for both beginners and seasoned runners, these shoes are engineered to keep you going.',
      
      'Material & Comfort:\n• Breathable mesh upper for maximum ventilation\n• EVA midsole for responsive cushioning and comfort\n• Cushioned heel support for added comfort during runs\n• Lightweight design to reduce foot fatigue\n\nTraction & Durability:\n• Non-slip rubber outsole for optimal grip on all surfaces\n• Durable and flexible sole that adapts to your movements\n• Ideal for both indoor and outdoor use\n\nDesign & Fit:\n• Stylish sporty look suitable for all occasions\n• Available in various colors to match your personal style\n• Available in a wide range of sizes for the perfect fit\n\nAdditional Features:\n• Provides excellent arch support for long-lasting wear\n• Suitable for casual joggers and marathon runners\n• Perfect for workouts, running, and daily activities',
      
      '★ Very comfortable for daily running and workouts.\n★ Good grip even on wet roads — highly recommended for runners.\n★ Looks exactly like shown in images — stylish and sleek.\n★ Light on feet, easy to wear for long hours.\n★ Value for money at this price.\n★ Minor size issue — recommend ordering one size larger.\n★ Overall happy with the purchase.'
    ],
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
    productDetails: [
      'Track your fitness goals, monitor your health, and stay connected with our feature-rich Smart Watch. Designed to fit seamlessly into your active lifestyle, this smartwatch offers 24/7 heart rate monitoring, sleep tracking, and fitness tracking, all from your wrist. With a stunning AMOLED display and customizable watch faces, this watch combines style and functionality. The 7-day battery life means you can track your health and receive notifications without worrying about running out of power. Compatible with both Android and iOS devices, this smartwatch is the perfect companion for health enthusiasts and tech lovers.',
      
      'Display & Design:\n• AMOLED touchscreen for vibrant colors and crisp display\n• Sleek and modern design that suits both casual and formal attire\n• Customizable watch faces to match your style\n\nHealth & Fitness Tracking:\n• 24/7 Heart rate monitor for constant health insights\n• Sleep tracker to monitor your sleep quality\n• Step counter and fitness tracker to help you achieve your fitness goals\n• GPS-enabled for accurate location tracking\n\nBattery & Performance:\n• 7-day battery life with typical usage\n• Fast charging technology for quick power-ups\n• Waterproof with 5 ATM rating for all-weather usage\n\nCompatibility:\n• Compatible with both Android and iOS devices\n• Seamless sync with fitness apps for enhanced tracking\n• Notifications for calls, messages, and apps',
      
      '★ Excellent smartwatch at this price range.\n★ Battery easily lasts a week with regular usage.\n★ Very accurate step counter and heart rate monitor.\n★ Display quality is crisp and bright even outdoors.\n★ Smooth connectivity with Android phones.\n★ Watch straps could have been slightly better quality.\n★ Overall, a premium product under budget!'
    ],
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
    productDetails: [
      'Carry your essentials with sophistication in this genuine Leather Backpack. Designed with business professionals, frequent travelers, and students in mind, this backpack offers a spacious interior with dedicated compartments for your laptop, documents, and accessories. The genuine leather material provides a premium, stylish appearance while ensuring durability. With padded shoulder straps and ergonomic support, this backpack is both functional and comfortable for everyday use. Whether you’re heading to work or traveling for business, this backpack is the perfect blend of style and practicality.',
      
      'Material & Durability:\n• Crafted from premium genuine leather for a rich, luxurious feel\n• High-quality, durable construction built to last\n• Water-resistant to protect your items from light rain\n\nStorage & Organization:\n• Large main compartment to store laptops, documents, and gadgets\n• Padded laptop sleeve for extra protection\n• Multiple internal pockets for easy organization\n• Adjustable straps for customizable comfort\n\nDesign & Comfort:\n• Ergonomic padded shoulder straps for ease of use\n• Classic, timeless design perfect for professional settings\n• Sleek and compact design that won’t weigh you down\n\nAdditional Features:\n• Durable, smooth metal zippers for secure closure\n• Ideal for commuting, business travel, and day-to-day use',
      
      '★ Superb quality leather — looks premium and rich.\n★ Very spacious, fits laptop and charger easily.\n★ Zippers are smooth and feel sturdy.\n★ Shoulder straps are well-padded and comfortable.\n★ Water resistance is decent.\n★ Slightly heavy when fully loaded — manageable.\n★ Perfect for office-goers and frequent travelers!'
    ],
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
    productDetails: [
      'Stay stylish while protecting your eyes with these premium Polarized Sunglasses. Designed for those who love outdoor activities, these sunglasses feature UV400 protection to shield your eyes from harmful rays and polarized lenses to eliminate glare. The lightweight frame ensures all-day comfort, making them perfect for long drives, beach trips, or any outdoor adventure. With a classic design, these sunglasses are suitable for both men and women, and the included hard case ensures safe storage when not in use.',
      
      'Lens Protection & Comfort:\n• 100% UV400 protection to block harmful rays\n• Polarized lenses for superior glare reduction\n• Scratch-resistant coating for enhanced durability\n\nDesign & Style:\n• Classic, unisex design suitable for any face shape\n• Stylish frame that complements all outfits\n• Lightweight frame ensures all-day wear without discomfort\n\nDurability & Convenience:\n• Includes hard case for protection and cleaning cloth\n• Sturdy build quality ensures long-lasting use\n• Ideal for long outdoor activities like driving, hiking, and beach trips\n\nAdditional Features:\n• Suitable for both men and women\n• Multiple colors available for personal style',
      
      '★ Very stylish and lightweight — looks great on face.\n★ Polarization is excellent, no glare even in strong sunlight.\n★ Frame quality is decent for the price.\n★ Comes with a sturdy hard case.\n★ Perfect for long drives and beach trips.\n★ Would have loved more color choices.\n★ Definitely worth buying!'
    ],
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
