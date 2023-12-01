import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  String name;
  NewsCard({required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          child: Image.asset(name,
          fit: BoxFit.cover,
          
          ),
           
           height: 210,
           width: 160,
        ),
      ),
    );
  }
}