import 'package:flutter/material.dart';
import 'package:page_transformer/data/home/HomeSectionData.dart';
import 'package:page_transformer/fragments/home/fruitsection/ItemDetails.dart';

class FragmentFruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 16) / 2;
    final double itemWidth = size.width / 2;

    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,

          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(fruitList.length, (index) {
            //  return new Design().getGridItem(fruitList[index]);
            return getListItem(fruitList[index],context);
          }),

        ),
      ),
    );
  }

  Widget getListItem(IntroItem item,BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(16.0)),
        elevation: 6.0,
        child: new Container(

          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(new Radius.circular(16.0),


              ),
              border: new Border.all(color: Colors.greenAccent)
          ),

          //adding child to column
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[

              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //amount
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                      child: new Text(
                        "${item.cost}",
                        style: new TextStyle(fontSize: 20.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto"),
                      ),
                    ),

                    getDiscountBanner()

                ],

              ),

              //item image
              InkResponse(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: new Image.network(
                      '${item.imageUrl}',
                      fit: BoxFit.fill,
                      height: 120.0,
                      width: 120.0,
                    ),
                  ),
                ),
                onTap:(){print("clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemDetails()),
                );
                },
              ),


              //item name
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 4.0, right: 4.0, top: 16.0),
                  child: new Text(
                    "${item.category}",
                    style: new TextStyle(fontSize: 20.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),


              //show rating
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    getRatingStar(1),
                    getRatingStar(1),
                    getRatingStar(1),
                    getRatingStar(1),
                    getRatingStar(2),
                  ],
                ),
              ),

              //add divider
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: new Divider(color: Colors.green),
              ),

              //add operation button

              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                        Icons.add_circle_outline,
                        color: Colors.green,
                        size: 24.0),

                    Container(
                      width: 40.0,
                      child: Center(
                        child: new Text(
                          "1",
                          style: new TextStyle(fontSize:12.0,
                              color:Colors.green,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto"),
                        ),
                      ),
                    ),

                    new Icon(
                        Icons.remove_circle_outline,
                        color: Colors.green,
                        size: 24.0),
                  ],

                ),
              ),//padding end here




            ],

          ),


        ),
      ),
    );
  }

  Widget getRatingStar(int type) {
    if (type == 1) //full
        {
      return new Icon(

          Icons.star,
          color: Colors.green,
          size: 20.0);
    }
    else if (type == 2) { //half rating star
      return new Icon(

          Icons.star_half,
          color: Colors.green,
          size: 20.0);
    }

    else //empty star
        {
      return new Icon(

          Icons.star_border,
          color: Colors.green,
          size: 20.0);
    }
  }

  Widget getDiscountBanner()
  {
    return Material(
      color: const Color(0x302b6005),

        borderRadius: new BorderRadius.only(
        bottomLeft: new Radius.circular(16.0),
        topRight: new Radius.circular(16.0),

      ),

      child: new Container(

          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.only(
                bottomLeft: new Radius.circular(16.0),
                topRight: new Radius.circular(16.0),


            ),


        ),
        child:  Padding(
          padding: const EdgeInsets.all(6.0),
          child: new Text(
            "28 % Off",
            style: new TextStyle(fontSize:12.0,
                color:Colors.green,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),
        ),

      ),
    );
  }

}