


import 'package:donalds_app/manager/cartManager.dart';

import 'package:donalds_app/screens/cartScreen.dart';
import 'package:donalds_app/screens/gifitScreen.dart';
import 'package:donalds_app/screens/homeScreen.dart';
import 'package:donalds_app/screens/splashScreen.dart';
import 'package:donalds_app/screens/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return 
    
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_)=> cartManager(),
          lazy: false,
           ),
        // ChangeNotifierProvider(
        //   create: (_)=> CartProduct(),
        //   lazy: false,
        //    ),
       
       
       
      ],
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
        
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/initial',
        onGenerateRoute: ((settings) {
          switch (settings.name) {
            case '/initial':
            return MaterialPageRoute(
              builder: (_)=> SplashScreen());
            case '/home':
            return MaterialPageRoute(
              builder: (_)=> HomeScreen());
            case '/cart':
            return MaterialPageRoute(
              builder: (_)=> CartScreen());
              case '/gifit':
              return MaterialPageRoute(
                builder: (_)=> GifitScreen()
              );
              
             
            default:
            return MaterialPageRoute(
              builder: (_)=> WelcomePage());
          }
        }),
      ),
    );
  }
}

