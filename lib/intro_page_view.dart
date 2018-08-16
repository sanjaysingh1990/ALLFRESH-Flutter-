import 'package:flutter/material.dart';
import 'package:page_transformer/data.dart';
import 'package:page_transformer/intro_page_item.dart';
import 'package:page_transformer/page_transformer.dart';

class IntroPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[

            Center(
              child: SizedBox.fromSize(
                size: const Size.fromHeight(400.0),
                child: PageTransformer(
                  pageViewBuilder: (context, visibilityResolver) {
                    return PageView.builder(
                      controller: PageController(viewportFraction: 0.85),
                      itemCount: sampleItems.length,
                      itemBuilder: (context, index) {
                        final item = sampleItems[index];
                        final pageVisibility =
                        visibilityResolver.resolvePageVisibility(index);
                        print(index);
                        return IntroPageItem(
                          item: item,
                          pageVisibility: pageVisibility,
                        );
                      },
                    );
                  },
                ),
              ),
            ), //center ends here


            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: new RaisedButton(key: null, onPressed: (){
                  print("clicked");
                  Navigator.of(context).pushReplacementNamed('/DashBorad');
                },
                    color: Colors.amber,
                    splashColor: Colors.redAccent,
                    child:
                    new Text(
                      "SKIP",
                      style: new TextStyle(fontSize: 12.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    )
                ),
              ),
            ),




          ],
        ), //center end here,
      ),


    );
  }
}
