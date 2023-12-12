import 'package:donalds_app/models/gifitModel.dart';
import 'package:flutter/material.dart';

class GifitTile extends StatelessWidget {
  GifitTile(this.gifit);

  Gifit gifit;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image.asset(gifit.image),
            ),
            Expanded(child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(gifit.message),
              ),
            ))
          ],),
      ),

    );
  }
}