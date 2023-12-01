import 'package:donalds_app/components/coffeCard.dart';
import 'package:donalds_app/components/nav_bar.dart';
import 'package:donalds_app/components/donutsCard.dart';
import 'package:donalds_app/components/newsCard.dart';
import 'package:donalds_app/models/news.dart';
import 'package:donalds_app/models/products.dart';

import 'package:donalds_app/screens/constants.dart';
import 'package:donalds_app/screens/detail_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key,  });

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  
  Widget build(BuildContext context) {

  

    
    return Scaffold(

      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(onPressed: () {
          
        },
        icon: Icon(
          Icons.menu,
          
        ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/locate.svg',
            height: 25,
            )),
            
            Text('Ipatinga/MG',
            style: TextStyle(
              fontSize: 12,
            ),
            )
          ],
        ),
        actions: [
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: SvgPicture.asset('assets/icons/notification.svg',
           height: 18,
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: GestureDetector(
            onTap: ()=> Navigator.of(context).pushNamed('/cart'),
             child: SvgPicture.asset('assets/icons/cart.svg',
             height: 18,
             ),
           ),
         ),
        ],
      ),
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        
        child: Column(
          
           
          
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text('Donuts & Café',
                  style: GoogleFonts.acme(
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Items...",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 218, 207, 207),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/icons/search.svg',
                      height: 11,
                      color: Color.fromARGB(255, 70, 67, 67),
                      ),
                    ),
                  
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(19),
                      
                    )
                  ),
                 
                  
                   
                  ),
                ),
            ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 16,
                    height: 115,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/espaco.png',
                      fit: BoxFit.cover,
                      )),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              //Donuts
              Padding(
                padding: const EdgeInsets.only( top: 10, right: 6),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(productListDonuts.length, (index) => 
                    DonutsCard(icon: productListDonuts[index].icon, title: productListDonuts[index].title, press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: productListDonuts[index]))),
                     
                    
                     
                    ))
               
                  
                     
      
                     
                    
                  ),
                ),
              ),
              SizedBox(height: 10,),
        //coffes
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(coffeList.length, (index) => CoffeCard(name: coffeList[index].title, image: coffeList[index].icon, price: coffeList[index].price, press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: coffeList[index]))),))
                 
                    
                   
                    
                   
                  
                ),

              ),
              
           SizedBox(height: 18,), 
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Novidades',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(news.length, (index) => NewsCard(name: news[index].images))
                //novidades
               
             
              
            ),
            
            
          ),
           
             
          ],
          
         
        ),
        
        
        
      ),
      extendBody: true,
   bottomNavigationBar: NavBar(),
      
      
    );
    
  }

 
}





