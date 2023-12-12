import 'package:donalds_app/manager/cartManager.dart';
import 'package:donalds_app/models/cartProduct.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartBottom extends StatefulWidget {
   
   
   cartBottom(
   
  );

  @override
  State<cartBottom> createState() => _cartBottomState();
}

class _cartBottomState extends State<cartBottom> {
  @override
  Widget build(BuildContext context) {

    var price = context.watch<cartManager>().totalCart();

    
    
    return ChangeNotifierProvider.value(
      value: cartManager(),
      builder: (context, child) {
        return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: (){
          
          
        },
        child: Container(
                        child: Center(
                          child: Text('COMPRAR R\$ ${price.toStringAsFixed(2)}' ,
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent[700],
                        ),
                      ),
      ),
        );
      },
     
    );
  }
}