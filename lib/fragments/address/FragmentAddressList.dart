import 'package:flutter/material.dart';

class FragmentAddressList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;


    final double itemWidth = size.width / 2;
    final double buttonSize = itemWidth - 40.0;

    return new Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            child: new ListView(
              children: List.generate(10, (index) {
                //  return new Design().getGridItem(fruitList[index]);
                return getItem(buttonSize);
              }),

            ),
          ),
          //button edit
          Padding(
            padding: const EdgeInsets.only(
                bottom: 30.0, left: 50.0, right: 50.0,top: 30.0),
            child: new InkWell(
              onTap: () => print('hello'),
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  border: new Border.all(
                      color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(100.0),
                ),
                child: new Center(child: new Text("Add new Contact",
                  style: new TextStyle(
                      fontSize: 14.0, color: Colors.white),),),
              ),

            ),
          )//padding //end here

        ],
      ),


    );
  }

  Widget getItem(double buttonSize) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),

            child: new Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(left: 32.0,right: 12.0,top: 8.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Address",
                        style: new TextStyle(fontSize: 20.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ),

                      new Icon(
                          Icons.check,
                          color: const Color(0xFF000000),
                          size: 22.0),


                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Divider(color: Colors.blue),
                ),

                //address
                Padding(
                  padding: const EdgeInsets.only(left: 32.0,right: 10.0,top: 10.0,bottom: 10.0),
                  child: new Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: new TextStyle(fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                ),




              ],

            ),
          ),

          //add buttons
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //button edit
                new InkWell( //ink well
                  onTap: () => print('hello'),
                  child: new Container(
                    width: buttonSize,
                    height: 40.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      border: new Border.all(
                          color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(100.0),
                    ),
                    child: new Center(child: new Text("Edit",
                      style: new TextStyle(
                          fontSize: 14.0, color: Colors.white),),),
                  ),

                ), //end here

                //button edit
                new InkWell( //ink well
                  onTap: () => print('hello'),
                  child: new Container(
                    width: buttonSize,
                    height: 40.0,
                    decoration: new BoxDecoration(
                      color: Colors.redAccent,
                      border: new Border.all(
                          color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(100.0),
                    ),
                    child: new Center(child: new Text("Delete",
                      style: new TextStyle(
                          fontSize: 14.0, color: Colors.white),),),
                  ),

                ) //end here


              ],

            ),
          ) //buttons


        ],
      ),
    );
  }
}