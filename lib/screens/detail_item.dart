
import 'package:donalds_app/components/rating_star.dart';
import 'package:donalds_app/manager/cartManager.dart';
import 'package:donalds_app/models/products.dart';
import 'package:donalds_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: Navigator.of(context).pop,
          child: Icon(Icons.arrow_back)),
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      backgroundColor: primaryColor,
      body: Column(
        
        children: [
          Hero(
            tag:'image',
            child: Image.asset(product.icon,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ) 
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sabor ${product.title}',
                       style: GoogleFonts.acme(
                      fontSize: 25,
                      color: Colors.brown
                    ),
                   
                    
                    ),

                     FeedBack(),
                    SizedBox(height: 10,),
                    Text(
                      'A qualidade que você já conhece, agora com muito mais sabor!!',
                       style: GoogleFonts.acme(
                      fontSize: 15,
                      color: Colors.brown
                    ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Text(
                        'R\$ ...',
                        style: GoogleFonts.abel(
                          fontSize: 25,
                          color: Colors.green
                        ),
                      ),
                      
                    ),
                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: () {
                        context.read<cartManager>().addToCard(this.product);
                        Navigator.of(context).pushNamed('/cart');
                      },
                      child: Container(
                        child: Center(
                          child: Text('CONTINUAR',
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      ),
                    )
                    
                  ],
                  
                ),
                
              ),
            ),
          ),
          
          
        ]
        
      ),
    );
  }
}