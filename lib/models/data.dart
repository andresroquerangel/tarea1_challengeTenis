import 'package:flutter/material.dart';
import 'package:tarea1_app_tenis/models/products.dart';

final listCategory = ['Tecnología', 'Ropa', 'Comida'];

final listProducts = [
  Products(
    'AMAZON',
    'ECHO POP',
    '\$49.00',
    4,
    [
      ImageProducts(
        'assets/shoes/AMAZON_PURPLE.png',
        const Color(0xff9e9bc6),
      ),
      ImageProducts(
        'assets/shoes/AMAZON_BLUE.png',
        const Color(0xff5f7c84),
      ),
    ],
  ),
  Products(
    'SONY',
    'AUDIFONOS WH-CH250',
    '\$150.00',
    3,
    [
      ImageProducts(
        'assets/shoes/AUDIFONOS_BEIGE.png',
        const Color(0xffc2b2a3),
      ),
      ImageProducts(
        'assets/shoes/AUDIFONOS_BLUE.png',
        const Color(0xff778da2),
      ),
      ImageProducts(
        'assets/shoes/AUDIFONOS_WHITE.png',
        const Color(0xffe4e6e5),
      ),
    ],
  ),
  Products(
    'APPLE',
    'APPLE SERIE 6',
    '\$180.00',
    4,
    [
      ImageProducts(
        'assets/shoes/APPLEWATCH_RED.png',
        const Color(0xffe2404b),
      ),
      ImageProducts(
        'assets/shoes/APPLEWATCH_BLUE.png',
        const Color(0xff2f374c),
      ),
    ],
  ),
];
