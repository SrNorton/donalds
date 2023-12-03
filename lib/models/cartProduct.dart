import 'package:donalds_app/models/products.dart';
import 'package:flutter/material.dart';

class CartProduct extends ChangeNotifier{

  String? name;
  String? image;
  double? price;
  int quantity = 1;

//  Product? product;

CartProduct({this.name, this.image, this.price, this.quantity = 1});


  CartProduct.fromProduct(Product product)  {
    name = product.title;
    image = product.icon;
    price = product.price;
    quantity = 1;  
  
   } 

   

    
    
    

   
 var value = 10;
  somar(){
    
    value += 10;
    print('o valor foi somado $value');
    notifyListeners();
    
    
  }

  
  

  double? get unitPrice{
    return price;
  }

  num get totalPrice{
    return unitPrice! * quantity;
    
   
    
  }

 increment(){
  
    quantity++;
  notifyListeners();
    
    print(totalPrice);
    
  }
   decrement(){
    
    quantity--;
    
  notifyListeners();

  }

 
}