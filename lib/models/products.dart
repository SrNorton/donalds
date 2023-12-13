import 'package:flutter/material.dart';

class Product {
  String icon, title;
  double price;

  Product({required this.icon, required this.title, required this.price});

}

 List<Product> productListDonuts = [
   Product(icon: 'assets/images/donuts_welcome.png', title: 'Homer', price: 14.99,
   
   ),
   Product(icon: 'assets/images/donuts_cobertura.png', title: 'chocolate', price: 14.99),
   Product(icon: 'assets/images/donuts_docedeleite.png', title: 'Glazed', price: 14.99),
   Product(icon: 'assets/images/donuts_welcome.png', title: 'Homer', price: 14.99),
   Product(icon: 'assets/images/chocolate.png', title: 'Granulado', price: 14.99),

   
   
  ];

  List<Product> coffeList = [
    Product(icon: 'assets/images/cafe_choco.png', title: 'Alpino', price: 19.99),
  Product(icon: 'assets/images/cafe_late.png', title: 'Au Lait', price: 19.99),
  Product(icon: 'assets/images/capuccino_camadas.png', title:'Macchiato 3', price: 19.99),
  Product(icon: 'assets/images/cremegelado.png', title:'Creme Gelado', price: 19.99),
  ];

  