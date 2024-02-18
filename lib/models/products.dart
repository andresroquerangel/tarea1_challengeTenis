import 'package:flutter/material.dart';

class ImageProducts {
  ImageProducts(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Products {
  Products(
    this.name,
    this.category,
    this.price,
    this.punctuation,
    this.listImage,
  );
  final String name;
  final String category;
  final String price;
  final int punctuation;
  final List<ImageProducts> listImage;
}