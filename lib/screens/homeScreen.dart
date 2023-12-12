import 'dart:io' show Platform;



import 'package:donalds_app/screens/gifitScreen.dart';
import 'package:donalds_app/screens/welcomePage.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int startPage = 0;
  late PageController pc;

  @override
  void initState() {
    
    super.initState();
    pc = PageController(initialPage: startPage);
  }

  setPage(index){
    setState(() {
      startPage = index;
    });
  }


  @override
  Widget build(BuildContext context) {

       double height = 0;

if (Platform.isAndroid) {
  height = 123;
} else if (Platform.isIOS) {
  height = 157;
}









    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          WelcomePage(),
          GifitScreen(),
        ],

        onPageChanged: setPage,
      ), 
      extendBody: true,

      bottomNavigationBar: Container(
        height: height,
        child: DotNavigationBar(
          
          
          
              
              margin: EdgeInsets.only(left: 50, right: 50),
              dotIndicatorColor: Colors.white,
            unselectedItemColor: Colors.grey[300],
              
              currentIndex: startPage,
              
              onTap: (index){
                pc.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.ease);
              },
              
              items:  [
                  /// Home
                  DotNavigationBarItem(
                    
                    icon: Icon(Icons.home,
                    
                    ),
                    selectedColor:  Colors.purple,
                  ),
          
                  /// Likes
                  
          
                  /// Search
                  DotNavigationBarItem(
                    icon: Icon(Icons.card_giftcard_outlined,
                    
                    
                    ),
                    selectedColor:  Colors.purple,
                  ),
          
                  /// Profile
                  // DotNavigationBarItem(
                  //   icon: Icon(Icons.person,
                    
                  //   ),
                  //   // selectedColor: Colors.teal,
                  // ),
                  
                ],
                
                ),
      ),
    );
  }
}