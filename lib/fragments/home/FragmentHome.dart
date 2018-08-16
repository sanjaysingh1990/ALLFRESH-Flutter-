import 'package:flutter/material.dart';
import 'package:page_transformer/fragments/home/GetHomeDesing.dart';

class FragmentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Column(

        children: <Widget>[
          new Design().TopView(),
          new Expanded(
            child: new ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: new Design().getSection("Vegetables",Colors.green),
                ),
                new Design().getVegetableSecton(),
                new Design().getSection("Fruits",Colors.orangeAccent),
                new Design().getFruitSecton(),
                new Design().getSection("Non Veg",Colors.redAccent),
                new Design().getNonVegSecton(),              ],
            ),
          )

        ],
      ),

    );
  }

}