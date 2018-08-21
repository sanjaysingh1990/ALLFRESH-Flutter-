//import 'package:drawer_demo/fragments/first_fragment.dart';
//import 'package:drawer_demo/fragments/second_fragment.dart';
//import 'package:drawer_demo/fragments/third_fragment.dart';
import 'package:flutter/material.dart';
import 'package:page_transformer/fragments/FragmentVegetables.dart';
import 'package:page_transformer/fragments/address/FragmentAddressList.dart';
import 'package:page_transformer/fragments/home/FragmentHome.dart';
import 'package:page_transformer/fragments/home/fruitsection/FragmentFruits.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Vegetables", Icons.free_breakfast),
    new DrawerItem("Fruits", Icons.info),
    new DrawerItem("My Address", Icons.location_on)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new FragmentHome();
      case 1:
        return new FragmentVegetables();
      case 2:
       return new FragmentFruits();
      case 3:
        return new FragmentAddressList();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("John Doe"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
