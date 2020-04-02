import 'package:bitcash/screens/categorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoresPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StoresPageState();
  }
}

class StoresPageState extends State<StoresPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
      appBar: AppBar(
        title: Text('Stores'),
        bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.receipt),),
                Tab(icon: Icon(Icons.note),),
              ],
            ),
      ),
      body: TabBarView(children: <Widget>[
        CategoryPage(),
        CategoryPage(),
      ],),
    ));
  }
}
