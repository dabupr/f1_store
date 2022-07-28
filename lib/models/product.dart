// ignore: file_names
import 'dart:ui';

class Product {
  final String image, title, description, imageP;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.imageP,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ferrari",
      price: 234,
      size: 12,
      description: dummyText,
      image: 'assets/brands/ferrari_brand.png',
      color: const Color.fromARGB(255, 218, 16, 16),
      imageP: 'assets/cars/ferrari.png'),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/brands/mercedes_brand.png",
      color: const Color.fromARGB(255, 90, 90, 109),
      imageP: 'assets/brands/ferrari_brand.png'),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/brands/ferrari_brand.png",
      color: const Color(0xFF989493),
      imageP: 'assets/brands/ferrari_brand.png'),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/brands/ferrari_brand.png",
      color: const Color.fromARGB(255, 196, 214, 31),
      imageP: 'assets/brands/ferrari_brand.png'),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/brands/ferrari_brand.png",
      color: const Color(0xFFFB7883),
      imageP: 'assets/brands/ferrari_brand.png'),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/brands/ferrari_brand.png",
    color: const Color(0xFFAEAEAE),
    imageP: 'assets/brands/ferrari_brand.png',
  ),
];

String dummyText =
    "Product description, product description, product description, product description, product description, product description, product description, product description,";
