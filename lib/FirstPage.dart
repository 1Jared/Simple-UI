import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/Shop.dart';
import 'Transactions.dart';
import 'WelcomeOverview.dart';

class FirstPage   extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.black26])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                margin: EdgeInsets.symmetric(vertical: 25.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                          'images/jared.jpg'),
                      radius: 30.0,

                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Terra Limited',
                            style:
                            TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Available Balance',
                            style:
                            TextStyle(color: Colors.white, fontSize: 11.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Kes 3,234.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.white,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            height: 20.0,
                            minWidth: 70.0,
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.blueAccent,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: null,
                              child: Text(
                                'Home',
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          ButtonTheme(
                            height: 20.0,
                            minWidth: 70.0,
                            child: FlatButton(
                              color: Colors.blue,
                              textColor: Colors.black,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomeOverView()),
                                );
                              },
                              child: Text(
                                'Overview',
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 111.0,
                              width: 140.0,
                              //color: Colors.black12, //TODO remove black color
                              child: Card(
                                child: Container(
                                  //margin: EdgeInsets.symmetric(horizontal:15.0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(13.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.business,
                                              color: Colors.orangeAccent,
                                              size: 19.0,
                                            ),
                                            SizedBox(
                                              width: 40.0,
                                            ),
                                            Text(
                                              '36',
                                              style: TextStyle(
                                                  color: Colors.orangeAccent,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 25.0),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              //  height:15.0,
                                              //  minWidth:8.0,
                                              color: Colors.orangeAccent
                                                  .withOpacity(0.02),

                                              child: OutlineButton(
                                                disabledBorderColor:
                                                Colors.white,
                                                onPressed: null,
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'Transactions',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 3.0,
                                                    ),
                                                    Text(
                                                      'Transactions Processed',
                                                      style: TextStyle(
                                                          fontSize: 9.0,
                                                          color:
                                                          Colors.black26),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              height: 111.0,
                              width: 140.0,
                              // color: Colors.black12, //TODO remove black color
                              child: Card(
                                child: Container(
                                  //margin: EdgeInsets.symmetric(horizontal:15.0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(13.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.shop,
                                              color: Colors.purple,
                                              size: 19.0,
                                            ),
                                            SizedBox(
                                              width: 40.0,
                                            ),
                                            Text(
                                              '36',
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 25.0),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              //  height:15.0,
                                              //  minWidth:8.0,
                                              color: Colors.purpleAccent
                                                  .withOpacity(0.04),

                                              child: OutlineButton(
                                                disabledBorderColor:
                                                Colors.white,
                                                onPressed: null,
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'e-Shop',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 3.0,
                                                    ),
                                                    Text(
                                                      'Get Orders,Sell Online',
                                                      style: TextStyle(
                                                          fontSize: 9.0,
                                                          color:
                                                          Colors.black26),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 9.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 111.0,
                              width: 140.0,
                              //color: Colors.black12, //TODO remove black color
                              child: Card(
                                child: Container(
                                  //margin: EdgeInsets.symmetric(horizontal:15.0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(13.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.payment,
                                              color: Colors.lightBlue,
                                              size: 19.0,
                                            ),
                                            SizedBox(
                                              width: 40.0,
                                            ),
                                            Text(
                                              '36',
                                              style: TextStyle(
                                                  color: Colors.lightBlue,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 25.0),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              //  height:15.0,
                                              //  minWidth:8.0,
                                              color:
                                              Colors.blue.withOpacity(0.02),

                                              child: OutlineButton(
                                                disabledBorderColor:
                                                Colors.white,
                                                //TODO remove

                                                // color: Colors.blue.withOpacity(0.05),

                                                onPressed: null,
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'Payments',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 3.0,
                                                    ),
                                                    Text(
                                                      'Process Payments',
                                                      style: TextStyle(
                                                          fontSize: 9.0,
                                                          color:
                                                          Colors.black26),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              height: 111.0,
                              width: 140.0,
                              //color: Colors.black12, //TODO remove black color
                              child: Card(
                                child: Container(
                                  //margin: EdgeInsets.symmetric(horizontal:15.0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(13.0),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.person_outline,
                                              color: Colors.lightGreen,
                                              size: 19.0,
                                            ),
                                            SizedBox(
                                              width: 40.0,
                                            ),
                                            Text(
                                              //TODO remove this text
                                              '36',
                                              style: TextStyle(
                                                  color: Colors.lightBlue,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 25.0),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              //  height:15.0,
                                              //  minWidth:8.0,
                                              color: Colors.lightGreen
                                                  .withOpacity(0.04),

                                              child: OutlineButton(
                                                disabledBorderColor:
                                                Colors.white,
                                                onPressed: null,
                                                child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      'Marketing',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 3.0,
                                                    ),
                                                    Text(
                                                      'Connect with customers',
                                                      style: TextStyle(
                                                          fontSize: 9.0,
                                                          color:
                                                          Colors.black26),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /*Container(
                        height: 110.0,
                        width: 60.0,
                        color: Colors.black12,
                        child: Card(

                        ),
                      )*/
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
