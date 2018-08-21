import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetails createState() => new _ItemDetails();
}

class _ItemDetails extends State<ItemDetails> {


  @override
  Widget build(BuildContext context) {


    return MaterialApp(


      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Item Details"),
            automaticallyImplyLeading: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //rounded discount view
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
                      child: new Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Text (
                                "25 % off",
                                style: new TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w400
                                )
                            ),
                          ),
                        ),
                        decoration: new BoxDecoration (
                            borderRadius: new BorderRadius.all(
                                new Radius.circular(100.0)),
                            color: const Color(0x302b6005)
                        ),

                      ), //container
                    ),

                    //add rating view
                    //rounded discount view
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 4.0, bottom: 4.0),
                          child: new Row(
                            children: <Widget>[
                              new Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 20.0),

                              new Text (
                                  "4.5",
                                  style: new TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w400
                                  )
                              )
                            ],
                          ),
                        ),

                        decoration: new BoxDecoration (
                            borderRadius: new BorderRadius.all(
                                new Radius.circular(100.0)),
                            color: const Color(0x302b6005)
                        ),

                      ),
                    ),

                  ],

                ),

                //image view
                new Container(
                  color: Colors.white,
                  child: Center(
                    child: new Image.network(
                      'https://5.imimg.com/data5/BR/ND/MY-1768518/fresh-lady-finger-500x500.jpg',
                      fit: BoxFit.fill,
                      height: 220.0,
                    ), //network image view
                  ),
                ), //container

                //end here

                //item quantity

                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(
                          Icons.add_circle_outline,
                          color: Colors.green,
                          size: 24.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: new Text(
                          "1",
                          style: new TextStyle(fontSize: 12.0,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto"),
                        ),
                      ),

                      new Text(
                        "X",
                        style: new TextStyle(fontSize: 12.0,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ),

                      new Text(
                        "3",
                        style: new TextStyle(fontSize: 16.0,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Center(
                          child: new Text(
                            "=",
                            style: new TextStyle(fontSize: 12.0,
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),


                      new Text(
                        "Cost : 9",
                        style: new TextStyle(fontSize: 12.0,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ),


                      new Icon(
                          Icons.remove_circle_outline,
                          color: Colors.green,
                          size: 24.0),
                    ],

                  ),
                ), //padding end here


                //text heading


                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new Text(
                    "Leady Finger",
                    style: new TextStyle(fontSize: 23.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                ), //padding end here


                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 10.0, right: 10.0),
                  child: new Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: new TextStyle(fontSize: 13.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                ), //padding end here


                //button

                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 50.0, right: 50.0),
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
                      child: new Center(child: new Text("Add to Cart",
                        style: new TextStyle(
                            fontSize: 14.0, color: Colors.white),),),
                    ),

                  ),
                )//padding


              ],

            ),
          )
      )
      ,
    );
  }
}