import 'package:donalds_app/components/gifitTile.dart';
import 'package:donalds_app/components/nav_bar.dart';
import 'package:donalds_app/models/gifitModel.dart';
import 'package:flutter/material.dart';

class GifitScreen extends StatelessWidget {
  const GifitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
        children: 
          List.generate(cuponsList.length, (index) => GifitTile(Gifit(cuponsList[index].name, cuponsList[index].image, cuponsList[index].message)))
        
            ),
      ),
    
    );
  }
}