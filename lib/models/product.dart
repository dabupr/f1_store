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
      imageP: 'assets/cars/ferrari_car.png'),
  Product(
      id: 2,
      title: "Mercedes",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/brands/mercedes_brand.png",
      color: const Color.fromARGB(255, 90, 90, 109),
      imageP: 'assets/cars/mercedes_car.png'),
  Product(
      id: 3,
      title: "Red Bull",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/brands/redBull2.png",
      color: const Color.fromARGB(255, 212, 41, 18),
      imageP: 'assets/cars/redBull_car.png'),
  Product(
      id: 4,
      title: "Alpine",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/brands/alpine2.png",
      color: const Color.fromARGB(255, 18, 7, 77),
      imageP: 'assets/cars/alpine_car.png'),
  Product(
      id: 5,
      title: "McLaren",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/brands/mcLaren.png",
      color: const Color.fromARGB(255, 231, 151, 3),
      imageP: 'assets/cars/mclaren_car.png'),
  Product(
    id: 6,
    title: "Alfa romeo",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/brands/alfa.png",
    color: const Color.fromARGB(255, 24, 4, 71),
    imageP: 'assets/cars/alfa_car.png',
  ),
  Product(
    id: 7,
    title: "Haas",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/brands/haas.png",
    color: const Color.fromARGB(255, 211, 11, 11),
    imageP: 'assets/cars/haas_car.png',
  ),
  Product(
    id: 8,
    title: "AlphaTauri",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/brands/alphatauri.png",
    color: const Color.fromARGB(255, 16, 9, 43),
    imageP: 'assets/cars/alphaTauri_car.png',
  ),
  Product(
    id: 9,
    title: "Aston Martin",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/brands/Aston.png",
    color: const Color.fromARGB(255, 10, 185, 89),
    imageP: 'assets/cars/astonMartin_car.png',
  ),
  Product(
    id: 10,
    title: "Williams",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/brands/Williams.png",
    color: const Color.fromARGB(255, 12, 130, 185),
    imageP: 'assets/cars/williams_car.png',
  ),
];

String dummyText =
    "Product description, product description, product description, product description, product description, product description, product description, product description";
