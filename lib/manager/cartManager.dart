import 'package:donalds_app/models/cartProduct.dart';
import 'package:donalds_app/models/products.dart';
import 'package:flutter/material.dart';

class cartManager extends ChangeNotifier{

  

  

  List<CartProduct> items = [];
  
  
  void addToCard(Product product){
    items.add(CartProduct.fromProduct(product));
    totalCart();
    notifyListeners();
    print(items.first.name);
  }


 
  
totalCart(){
  double total = 0;
  items.forEach((e) { 
    total += e.totalPrice;
    print('este é o total $total');
    notifyListeners();
    
  });
  return total;
  
}


}