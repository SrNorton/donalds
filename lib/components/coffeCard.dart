import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeCard extends StatelessWidget {

  String name, image;
  num price;
  final VoidCallback press;
  
  CoffeCard({required this.name, required this.image, required this.price, required this.press,
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 233, 233, 233)
          ),
          height: 180,
          width: 130,
          child: Column(
            children: [
              Hero(
                tag:'image',
                child: Image.asset(image,
                height: 120,
                width: 110,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name,
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              Text('R\$ ${price}',
              style: TextStyle(
                fontSize: 13,
                color: const Color.fromARGB(255, 6, 8, 12),
              ),
              )
            ],
                
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Container(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 160, 7, 7),
            ),
          ),
        )
        ],
         
      ),
    );
  }
}