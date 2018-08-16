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
                //vegetable section label
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: new Design().getSection("Vegetables",Colors.green),
                ),

                //5 horizontal  vegetables items
                new Design().getVegetableSecton(),
                //frution section label
                new Design().getSection("Fruits",Colors.orangeAccent),
                //5 horizontal  fruit items
                new Design().getFruitSecton(),

                //nonveg section label
                new Design().getSection("Non Veg",Colors.redAccent),
                //5 horizontal  nonveg items
                new Design().getNonVegSecton(),              ],
            ),
          )

        ],
      ),

    );
  }

}