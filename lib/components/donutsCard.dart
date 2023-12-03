import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// class Category{
//   SvgPicture image;
//   String name;

//   Category({required this.image, required this.name});

//  
// }

class DonutsCard extends StatelessWidget {
  DonutsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.press,

  });

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  press,
      child: Container(
        
           color: Color.fromARGB(255, 233, 233, 233),  
       child: Padding(
         padding: EdgeInsets.all(20),
         child: Column(
          children: [
            Image.asset(icon, height: 50,
            width: 50,
            ),
            SizedBox(height: 8,),
            Text(title,
            style: GoogleFonts.acme(
              
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            )
          ],
          ),
       )),
    );
  }


}