import 'package:donalds_app/components/inputQuantity.dart';
import 'package:donalds_app/manager/cartManager.dart';

import 'package:donalds_app/models/cartProduct.dart';
import 'package:donalds_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CartTile extends StatelessWidget {
  
 final CartProduct cartProduct;
 final cartManager cartmanage;
  
  CartTile(this.cartProduct, this.cartmanage);

  @override
  Widget build(BuildContext context) {
    

    return Card(
      color: acentColor,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: <Widget>[
            Container(
              
              color: Colors.white,
              height: 60,
              width: 60,
              child: Image.asset(cartProduct.image!),
            ),
            Expanded(
             
              
              child: Padding(
                 padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      cartProduct.name!,
                      style: GoogleFonts.acme(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('R\$ ${cartProduct.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]
                    ),
                    )
                  ],),

              ),
              ),

              InputQuantity(cartProduct: cartProduct, cartmanager: this.cartmanage,),
          ],
        ),
      ),
    );
  }
}

