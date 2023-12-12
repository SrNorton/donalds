import 'package:donalds_app/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _controller.duration = Duration( milliseconds: 1000);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: primaryColor,
      // appBar: AppBar(
        
      //   backgroundColor: Colors.red[100],
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          //  Padding(
          //    padding: const EdgeInsets.only(top: 55, right: 25),
          //    child: Text('MAIS SABOR PARA O SEU DIA !!!',
          //             style: GoogleFonts.acme(
          //               fontSize: 22,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.brown,
           
          //             ),
          //             ),
          //  ),
          
          Container(
            color: primaryColor,
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Lottie.asset('assets/animation/coffee.json'),
            ),
            
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 33),
              child: FloatingActionButton(
            
                child: Icon(Icons.coffee,
                color: Colors.pink,
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed('/home');
                } ),
            ),
          //    Expanded(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(25),
          //         topRight: Radius.circular(25),
          //       ) 
          //     ),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(18.0),
          //           child: Text('MAIS SABOR PARA O SEU DIA !!!',
          //           style: GoogleFonts.acme(),
          //           ),
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(right: 12),
          //               child: GestureDetector(
          //                 onTap: ()=> Navigator.of(context).pushNamed('/welcome'),
          //                 child: Container(
                        
          //                   height: 25,
          //                   width: 75,
          //                   decoration: BoxDecoration(
          //                     color: Colors.brown[700],
          //                     borderRadius: BorderRadius.circular(10),
                              
          //                   ),
          //                   child: Center(
          //                     child: Text('Explorar',
          //                     style: GoogleFonts.acme(
          //                       color: Colors.white
          //                     ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          
        ],
      ),
    );
  }
}