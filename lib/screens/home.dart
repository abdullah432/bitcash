import 'package:flutter/material.dart';
import 'package:bitcash/screens/navdrawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Bitcash'),
        
      ),
      body: Container(color: Colors.white)
  );
  }
  
}