import 'dart:math';

import 'package:flutter/material.dart';
import 'package:page_transformer/data/home/HomeSectionData.dart';

class Design {

  final _controller = new PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<Widget> _pages = <Widget>[
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.network(
        'https://img1.exportersindia.com/product_images/bc-full/dir_95/2845250/fresh-vegeable-973743.jpg',
        fit: BoxFit.fill,
      ),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.network(
        'https://2.wlimg.com/product_images/bc-full/dir_173/5173441/fresh-fruits-1503569156-3245312.jpeg',
        fit: BoxFit.fill,
      ),
    ),
    new ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: new Image.network(
        'http://static.businessworld.in/article/article_extra_large_image/1461612281_FbeP5p_freshchops_banner2.jpg',
        fit: BoxFit.fill,
      ),
    ),
  ];


  Widget TopView() {
    return Container(
      height: 220.0,
      child: new IconTheme(

        data: new IconThemeData(color: _kArrowColor),
        child: new Stack(
          children: <Widget>[
            new PageView.builder(
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            new Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: new Container(
                color: Colors.grey[800].withOpacity(0.5),
                padding: const EdgeInsets.all(15.0),
                child: new Center(
                  child: new DotsIndicator(
                    controller: _controller,
                    itemCount: _pages.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ); //container ends here

  }


  Widget getVegetableSecton() {
    return Container(
        height: 150.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Let the ListView know how many items it needs to build
            itemCount: vegtableList.length,
            // Provide a builder function. This is where the magic happens! We'll
            // convert each item into a Widget based on the type of item it is.
            itemBuilder: (context, index) {
              //print("size ${vegtableList.length}");
              return getGridItem(vegtableList[index]);
            }
        )
    );


  }
  Widget getFruitSecton() {
    return Container(
        height: 150.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Let the ListView know how many items it needs to build
            itemCount: fruitList.length,
            // Provide a builder function. This is where the magic happens! We'll
            // convert each item into a Widget based on the type of item it is.
            itemBuilder: (context, index) {
              //print("size ${vegtableList.length}");
              return getGridItem(fruitList[index]);
            }
        )
    );


  }

  Widget getNonVegSecton() {
    return Container(
        height: 150.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // Let the ListView know how many items it needs to build
            itemCount: nonVegList.length,
            // Provide a builder function. This is where the magic happens! We'll
            // convert each item into a Widget based on the type of item it is.
            itemBuilder: (context, index) {
              //print("size ${vegtableList.length}");
              return getGridItem(nonVegList[index]);
            }
        )
    );


  }


  Widget getGridItem(IntroItem item) {
    return Container(
      width: 150.0,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: new Card(
          child: Container(
            child: new Stack(
              children: <Widget>[
                Center(
                  child: new Image.network(
                    '${item.imageUrl}',
                    fit: BoxFit.fill,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[


                      new Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 24.0),

                    ],
                  ),
                ),


                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,//match the with with parent
                    height: 20.0,
                    color: const Color(0x20000000),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                        child: new Text(
                          "${item.category}",
                          style: new TextStyle(fontSize: 12.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ), //Align end here
                    ),
                  ),
                ), //padding end here


              ],
            ), //stack
          ),


        ),
      ),
    );
  } //list item

  Widget getSection(String lable, Color sectionColor) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: new Container(
        height: 30.0,
        color: sectionColor,
        child: Center(child: getSectionText(lable)),
      ),
    );
  }

  //get section
  Widget getSectionText(String label) {
    return new Text(
      "$label",
      style: new TextStyle(fontSize: 14.0,
          color: const Color(0xFFf7eded),
          fontWeight: FontWeight.w300,
          fontFamily: "Roboto"),
    );
  }

}

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }


}