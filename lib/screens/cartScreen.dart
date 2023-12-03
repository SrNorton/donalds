import 'package:donalds_app/components/cartBottom.dart';
import 'package:donalds_app/components/cartTile.dart';
import 'package:donalds_app/manager/cartManager.dart';

import 'package:donalds_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
 
  

  const CartScreen();


  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushNamed('/welcome');
        } , icon: Icon(
          Icons.home,
          color: Colors.pink,
          )),
       actions: [
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: SvgPicture.asset('assets/icons/notification.svg',
           height: 18,
           ),
         ),],
        backgroundColor: primaryColor,
        title: Text(
          'Bandeja',
          style: GoogleFonts.acme(
                    color: Colors.brown,
                  ),
        ),
      ),
      body: Consumer<cartManager>(
        
        builder: (_, cartManager,__){
          
          return SingleChildScrollView(
            
            scrollDirection: Axis.vertical,
            child: Column(
              children: 
                cartManager.items.map((cartProduct) => CartTile(cartProduct, cartManager)).toList(),
                
              
            ),
            
            
          );
          
        } ),
       
        bottomNavigationBar: cartBottom(),
    );
  }
}

