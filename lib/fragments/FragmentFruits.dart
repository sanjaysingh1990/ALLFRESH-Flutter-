import 'package:flutter/material.dart';
import 'package:page_transformer/data/home/HomeSectionData.dart';
import 'package:page_transformer/fragments/home/GetHomeDesing.dart';

class FragmentFruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(fruitList.length, (index) {
            return new Design().getGridItem(fruitList[index]);
          }),
          //  childAspectRatio: 0.5,
        ),
      ),
    );
  }

}