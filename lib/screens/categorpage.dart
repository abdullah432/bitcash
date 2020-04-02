import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navdrawer.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CategoryPageState();
  }
}

class CategoryPageState extends State<CategoryPage> {
  //list of categories
  List<String> _listOfCategory = [
    'Grocery',
    'Apparel',
    'Beauty & Wellness',
    'Electronics',
    'Movie Theaters'
  ];

  //list of icons
  List<Icon> _listOfIcons = [
    Icon(Icons.local_grocery_store),
    Icon(Icons.perm_identity),
    Icon(Icons.nature),
    Icon(Icons.radio),
    Icon(Icons.movie),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Bitcash'),
        
      ),
      body: _buildCategoryList(),
    );
  }

  _buildCategoryList() {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: _listOfCategory.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = _listOfCategory[index];
        final icon = _listOfIcons[index];

        return ListTile(
          leading: icon,
          title: Text(
            item,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          trailing: Padding(
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 17,
                ),
              )),
        );
      },
    );
  }
}
