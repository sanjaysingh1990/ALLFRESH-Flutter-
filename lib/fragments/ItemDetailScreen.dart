import 'package:flutter/material.dart';
import 'package:page_transformer/home/HomePage.dart';
import 'package:page_transformer/intro_page_view.dart';


class ItemDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: layoutDesing(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new IntroPageView(),
        '/DashBorad': (BuildContext context) => new HomePage(),

      },
    );
  }

  Widget layoutDesing() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(

          children: <Widget>[
            Container(
              color: Colors.white,
              child: Center(
                child: new Image.network(
                  'https://5.imimg.com/data5/BR/ND/MY-1768518/fresh-lady-finger-500x500.jpg',
                  fit: BoxFit.fill,
                  height: 300.0,
                ),
              ),
            ),

            //add cardview
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 290.0),
              child: new Material(
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(16.0),
                    topRight: const Radius.circular(16.0)),
                elevation: 6.0,
                child: Container(
                  padding: new EdgeInsets.all(8.0),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(16.0),
                        topRight: const Radius.circular(16.0)),


                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,


                    children: <Widget>[
                      //first view
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //get circular profile pic
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: getUserCircularProfilePic(),
                          ),

                          new Expanded(child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                new Text(

                                  "The Apothecarium - Castro",
                                  style: new TextStyle(fontSize: 15.0,
                                      color: const Color(0xFF000000),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Roboto"),
                                ),

                                new Row(
                                  children: <Widget>[
                                    new Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20.0),

                                    new Text(
                                      "4.5 of 6 reviews",
                                      style: new TextStyle(fontSize: 12.0,
                                          color: const Color(0xFF000000),
                                          fontWeight: FontWeight.w200,
                                          fontFamily: "Roboto"),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: new Text(
                                        "Medical",
                                        style: new TextStyle(fontSize: 12.0,
                                            color: const Color(0xFF2b6005),
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Roboto"),
                                      ),
                                    ),


                                  ],

                                ), //end her
                                //location
                                new Row(
                                  children: <Widget>[
                                    new Icon(
                                        Icons.location_on,
                                        color: Colors.orange,
                                        size: 20.0),

                                    new Text(
                                      "800m",
                                      style: new TextStyle(fontSize: 12.0,
                                          color: const Color(0xFF000000),
                                          fontWeight: FontWeight.w200,
                                          fontFamily: "Roboto"),
                                    ),

                                  ],
                                ) //endh here


                              ],
                            ),
                          ),

                          ),

                        ],

                      ), //first view end here

                      //second view
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: new TextStyle(fontSize: 12.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Roboto"),
                        ),
                      ),

                      //end here


                      //third view

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(
                          children: <Widget>[
                            new Text(
                              "More",
                              style: new TextStyle(fontSize: 14.0,
                                  color: const Color(0xFF167328),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                            new Icon(
                                Icons.arrow_drop_down,
                                color: Colors.green,
                                size: 24.0),

                          ],
                        ),
                      ),

                      //end here

                      //fourth view


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          "Opening Hours",
                          style: new TextStyle(fontSize: 20.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto"),
                        ),
                      ),


                      //monday firday timing
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            getText("Monday - Friday"),
                            getText("10.00AM : 11.00AM")
                          ],
                        ),
                      ),

                      //end here


                      //saturday sunday timing
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            getText("Saturday - Sunday"),
                            getText("10.00AM : 11.00AM")
                          ],
                        ),
                      ),

                      //end here

                      //next view

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Row(

                          children: <Widget>[

                            new Expanded(child: new Text(

                              "Contact Us",
                              style: new TextStyle(fontSize: 20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto"),
                            ),),


                          ],
                        ),
                      ), //end here


                      //next view contact us
                      //locaton
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            getContactUsItem(
                                "Phase 8b, Mohali, Punjab",
                                Icons.location_city),

                            new Text(
                              "View Map",
                              style: new TextStyle(fontSize: 14.0,
                                  color: const Color(0xFF167328),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                          ],

                        ),
                      ),

                      //end here
                      //next view
                      //phone
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: getContactUsItem(
                            "+91 9411702581", Icons.phone),
                      ),


                      //end here
                      //next view
                      //emaile
                      Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: getContactUsItem(
                              "bisht.sanjaysingh97@gmail.com", Icons.email)
                      ),


                      //end here

                      //next view
                      //fourth view


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Row(
                          children: <Widget>[
                            new Expanded(child: new Text(

                              "Rating & Reviews",
                              style: new TextStyle(fontSize: 20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto"),
                            ),),


                          ],
                        ),
                      ),

                      //end here

                      //next view
                      getRatingCountWithTotalReviewers(),


                      //end here

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new InkWell(
                          onTap: () => print('hello'),
                          child: new Container(
                            //width: 100.0,
                            height: 50.0,
                            decoration: new BoxDecoration(
                              color: Colors.transparent,
                              border: new Border.all(
                                  color: Colors.green, width: 2.0),
                              borderRadius: new BorderRadius.circular(100.0),
                            ),
                            child: new Center(child: new Text('Write a Review',
                              style: new TextStyle(
                                  fontSize: 18.0, color: Colors.green),),),
                          ),
                        ),
                      ),
                      //first comment
                      getCommentView("Sanjay Singh Bisht",
                          "In this example, I will show just a basic screen with a circle image and a text underneath, and loading the image from url, if you are trying to load a asset image, just replace NetworkImage with AssetImage, and will do the thing.",
                          4),
                      //second comment
                      getCommentView("Khuspreet",
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          4),


                      //next design

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: new Row(

                          children: <Widget>[
                            new Expanded(child: getButtonBottom(
                                "View Menu", Colors.white, Colors.black)
                            ),

                            new Expanded(child: getButtonBottom(
                                "Book Now", Colors.green, Colors.white),)
                          ],
                        ),
                      )

                      //end here

                    ],

                  ),
                ),
              ),
            )


          ]
          ,
        )
        ,
      )
      , //stack end here,,

    );
  }

  Widget getButtonBottom(String buttonText, Color background, Color textColor) {
//    return new Container(
//      color: background,
//      padding: new EdgeInsets.all(8.0),
//      decoration: new BoxDecoration(
//        borderRadius: new BorderRadius.only(
//            topLeft: const Radius.circular(16.0),
//            topRight: const Radius.circular(16.0)),
//
//
//      ),
//      child: new RaisedButton(key: null, onPressed: null,
//          color: background,
//          child:
//          new Text(
//            "$buttonText",
//            style: new TextStyle(fontSize: 12.0,
//                color: textColor,
//                fontWeight: FontWeight.w200,
//                fontFamily: "Roboto"),
//          )
//      ),
//
//    );


    return new InkWell(
      onTap: () => print('hello'),
      child: new Container(
        //width: 100.0,
        height: 50.0,
        decoration: new BoxDecoration(
          color: background,
          border: new Border.all(color: Colors.white, width: 2.0),
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Center(child: new Text(buttonText,
          style: new TextStyle(fontSize: 18.0, color: textColor),),),
      ),
    );
  }

  Widget getCommentView(String userName, String commentText, int starRating) {
    return new Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //to manage element from start
        children: <Widget>[

          getUserCircularProfilePic(),

          new Expanded(child:
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: new Text(

                  "$userName",
                  style: new TextStyle(fontSize: 15.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto"),
                ),
              ),

              getRatingCountWithTotalReviewers(),

              //comment text
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: new Text(

                    "$commentText",
                    style: new TextStyle(fontSize: 12.0,
                        color: const Color(0xFF848484),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  )
              ),
              //for comment timing
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: getCommentTimeAgo("1 hour ago")
              ),

            ],
          ),

          ),

        ],

      ),
    ); //first view end here
  }

  Widget getCommentTimeAgo(String time) {
    return new Text(
      "$time",
      style: new TextStyle(fontSize: 10.0,
          color: const Color(0xFF848484),
          fontWeight: FontWeight.w600,
          fontFamily: "Roboto"),
    );
  }

  Widget getRatingCountWithTotalReviewers() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        children: <Widget>[

          getRatingStar(1),
          getRatingStar(1),
          getRatingStar(1),
          getRatingStar(1),
          getRatingStar(2),


          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: new Text(
              "4.5 of 6 reviews",
              style: new TextStyle(fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
          ),


        ],

      ),
    ); //end her
  }

  Widget getRatingStar(int type) {
    if (type == 1) //full
        {
      return new Icon(

          Icons.star,
          color: Colors.orange,
          size: 20.0);
    }
    else {
      return new Icon(

          Icons.star_half,
          color: Colors.orange,
          size: 20.0);
    }
  }

  Widget getContactUsItem(String text, IconData icon) {
    return new Row(
      children: <Widget>[
        new Icon(
            icon,
            color: Colors.orange,
            size: 22.0),

        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: new Text(
            "$text",
            style: new TextStyle(fontSize: 14.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),


      ],

    );
  }

  Widget getText(String text) {
    return new Text(

      "$text",
      style: new TextStyle(fontSize: 14.0,
          color: const Color(0xFF848484),
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto"),
    );
  }

  Widget getUserCircularProfilePic() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: new Container(
          width: 40.0,
          height: 40.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://i.imgur.com/BoN9kdC.png")
              )
          )
      ),
    );
  }


}