import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _currentIndex = 0;
      //  var _selectedTab = _SelectedTab.home;
    void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
    print('${_currentIndex}');
  }
  // void _handleIndexChanged(int i) {
  //   setState(() {
  //     _selectedTab = _SelectedTab.values[i];
  //   });
  // }
  
  
  
  
  @override
  
  Widget build(BuildContext context) {

    double height = 0;

if (Platform.isAndroid) {
  height = 123;
} else if (Platform.isIOS) {
  height = 157;
}
  
    return Container(
        height: height,
      
      
      child: DotNavigationBar(
            
            margin: EdgeInsets.only(left: 10, right: 10),
            dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
            
            currentIndex: _currentIndex,
            
            onTap: changePage,
            
            items:  [
                /// Home
                DotNavigationBarItem(
                  
                  icon: Icon(Icons.home,
                  
                  ),
                  selectedColor:  Colors.purple,
                ),
        
                /// Likes
                DotNavigationBarItem(
                  icon: Icon(Icons.favorite_border,
                  
                  ),
                  selectedColor: Colors.purple,
                ),
        
                /// Search
                DotNavigationBarItem(
                  icon: Icon(Icons.coffee,
                  
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
    );
            
  }
}
// enum _SelectedTab { home, favorite, search,}
 
    