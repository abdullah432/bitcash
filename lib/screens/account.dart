import 'package:bitcash/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAccountState();
  }
}

class MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('My Account'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              profileInfo(),
              listOfOptions(),
            ],
          ),
        ));
  }

  profileInfo() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
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
                        height: 8,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Abdullah khan',
                            style: TextStyle(
                                color: CustomColor.primarycolor90,
                                fontSize: 20),
                          )),
                      Container(
                        width: 0,
                        height: 3,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'abdullah234ktk@gmail.com',
                            style: TextStyle(
                                color: CustomColor.primarycolor70,
                                fontSize: 16),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: <Widget>[
                    //first column
                    Column(
                      children: <Widget>[
                        Text(
                          'Pending Cashback',
                          style: TextStyle(
                              color: CustomColor.primarycolor90, fontSize: 16),
                        ),
                        Text(
                          'Rs 0.00',
                          style: TextStyle(
                              color: CustomColor.primarycolor90, fontSize: 14),
                        ),
                      ],
                    ),
                    //divider
                    Container(
                      height: 40,
                      width: 25,
                      child: VerticalDivider(
                        color: CustomColor.primarycolor,
                      ),
                    ),
                    //second column
                    Column(
                      children: <Widget>[
                        Text(
                          'Approved Cashback',
                          style: TextStyle(
                              color: CustomColor.primarycolor90, fontSize: 16),
                        ),
                        Text(
                          'Rs 0.00',
                          style: TextStyle(
                              color: CustomColor.primarycolor90, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 12.0),
              child: Text(
                '*Minimum redeemable amount is Rs.99',
                style: TextStyle(color: CustomColor.primarycolor50),
              ),
            ),
            Container(
                height: 42,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: RaisedButton(
                    color: CustomColor.primarycolor70,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () {
                      //remove cursor blink of search textfield
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: Text(
                      'Redeem',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }

  listOfOptions() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: <Widget>[
          Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'My Profile',
                  style: TextStyle(color: CustomColor.primarycolor90),
                ),
                trailing: Icon(Icons.account_circle),
              )),
              Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Referal',
                  style: TextStyle(color: CustomColor.primarycolor90),
                ),
                trailing: Icon(Icons.credit_card),
              )),
        ],
      ),
    );
  }
}
