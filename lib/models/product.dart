// import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  // final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    // required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}



List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/product/sunflower.png",


    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Sunflower",
    price: 64.99,
    description: 'Sunflower seeds are popular in trail mix, multi-grain bread, nutrition bars, and for snacking straight from the bag.',
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/product/roses.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Rose",
    price: 50.5,
    description: 'Growing roses from seeds is not the fastest method for propagating roses but has several advantages.',
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/product/genda.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Marigold",
    price: 36.55,
    description: 'Florets are also added in salads as it has anti-carcinogenic properties. Popularly known as genda phool can be used to heal wounds and as a key ingredient in tea.',
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/product/lily.png",
    ],
    // colors: [
    //   const Color(0xFFF6625E),
    //   const Color(0xFF836DB8),
    //   const Color(0xFFDECB9C),
    //   Colors.white,
    // ],
    title: "Lily ",
    price: 20.20,
    description: 'The name lily comes from the Latin word for this type of flower, “lilium." The flowers represent purity, innocence and rebirth: in religious iconography, they often represent the Virgin Mary, and are also often depicted at the Resurrection of Christ.',
    rating: 4.1,
    isFavourite: true,
  ),
  // Product(
  //   id: 5,
  //   images: [
  //     "assets/product/lotus.png",
  //   ],
  //   // colors: [
  //   //   const Color(0xFFF6625E),
  //   //   const Color(0xFF836DB8),
  //   //   const Color(0xFFDECB9C),
  //   //   Colors.white,
  //   // ],
  //   title: "Lotus",
  //   price: 20.20,
  //   description: 'The lotus flower is an aquatic perennial. Sometimes mistaken for the water-lily, the lotus has a distinctively different structure. It also only comes in pink hues or white, whereas the lily comes in many different colors. ',
  //   rating: 4.1,
  //   isFavourite: true,
  // ),
];

// const String description =
//     "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

