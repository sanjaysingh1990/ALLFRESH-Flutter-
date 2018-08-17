import 'package:flutter/material.dart';
import 'package:page_transformer/SplashScreen.dart';
import 'package:page_transformer/fragments/ItemDetailScreen.dart';
import 'package:page_transformer/home/HomePage.dart';
import 'package:page_transformer/intro_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItemDetailScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new IntroPageView(),
        '/DashBorad': (BuildContext context) => new HomePage(),

      },
    );
  }
}