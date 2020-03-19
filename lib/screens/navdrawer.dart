import 'package:bitcash/Helping/colors.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                drawerProfileInfo(),
                drawerAccountInfo(),
              ],
            ),
            decoration: BoxDecoration(
              color: CustomColor.primarycolor,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('My Account'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Stores'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }

  drawerProfileInfo() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.amberAccent,
              )),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                width: 0,
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Abdullah khan',
                    style: TextStyle(color: Colors.white),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'abdullah234ktk@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        )
      ],
    );
  }

  drawerAccountInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //first column
          Column(
            children: <Widget>[
              Text(
                'Pending',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              Text(
                '\$ 0.00',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              )
            ],
          ),
          //Divider
          Container(
              height: 40,
              width: 25,
              child: VerticalDivider(
                color: Colors.white,
              )),
          //second column
          Column(
            children: <Widget>[
              Text(
                'Approved',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              Text(
                '\$ 0.00',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              )
            ],
          ),
          //Divider
          Container(
              height: 40,
              width: 25,
              child: VerticalDivider(
                color: Colors.white,
              )),
          //third column
          Column(
            children: <Widget>[
              Text(
                'Redeemed',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              Text(
                '\$ 0.00',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ],
      ),
    );
  }
}
