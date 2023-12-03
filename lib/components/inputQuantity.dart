import 'package:donalds_app/manager/cartManager.dart';
import 'package:donalds_app/models/cartProduct.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputQuantity extends StatelessWidget {
  const InputQuantity({
    super.key,
    required this.cartProduct,
    required this.cartmanager
  });

  final CartProduct cartProduct;
  final cartManager cartmanager;

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider.value(
      value: cartProduct,
      child: Consumer<CartProduct>(
        builder: (_, cartProduct,__){
          return Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green[300],
            ),
            
            height: 25,
            width: 25,
            child: GestureDetector(
              onTap: (){
                cartProduct.increment();
                cartmanager.totalCart();
              } ,
              
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            
            height: 25,
            width: 25,
            child: Center(child: Text('${cartProduct.quantity}')),
          ),
          cartProduct.quantity <= 1 ? Container() :
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green[300],
            ),
            
            height: 25,
            width: 25,
            child:  GestureDetector(
              onTap: (){
                cartProduct.decrement();
                cartmanager.totalCart();
                } ,
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
        })
    );
  }
}