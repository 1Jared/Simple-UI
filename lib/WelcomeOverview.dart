import 'package:flutter/material.dart';
import 'package:loginpage/welcomePage.dart';
import 'CircleProgress.dart';
import 'welcomePage.dart';

class WelcomeOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyAppState();
  }
}

class MyAppState extends StatefulWidget {
  @override
  _MyAppStateState createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
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
                      backgroundColor: Colors.yellow,
                      radius: 28.0,
                      backgroundImage: AssetImage('images/jared.jpg'),

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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              height: 20.0,
                              minWidth: 70.0,
                              child: FlatButton(
                                color: Colors.blue,
                                textColor: Colors.black,
                               disabledColor: Colors.blue,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.all(8.0),
                                splashColor: Colors.blueAccent,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Welcome()),
                                  );
                                },
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
                                textColor: Colors.white,
                                disabledColor: Colors.blue,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.all(8.0),
                                splashColor: Colors.blueAccent,
                                onPressed: null,
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
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Graph View',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Divider(
                              //height: 4.0,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Details',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 177.0,
                        width: 200.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Overview',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'A summary of how your business is doing',
                              style: TextStyle(fontSize: 10.0),
                            ),
                            Container(
                              height: 50.0,
                              child: CustomPaint(
                                foregroundPainter: CircleProgress(25),
                              ),
                            ),
                          ],
                        ),
                      )
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
              /*BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.blue,
                // currentIndex :_currentIndex,
                type: BottomNavigationBarType.fixed,
                iconSize: 20,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.black54,size: 20.0,),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.black54,fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shop,
                      color: Colors.black54,
                      size: 20.0,
                    ),
                    title: Text(
                      'Shop',
                      style: TextStyle(color: Colors.black54,fontSize: 11.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet, color: Colors.black54,size: 20.0,),
                    title: Text(
                      'Transactions',
                      style: TextStyle(color: Colors.black54,fontSize: 11.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.mail_outline, color: Colors.black54,size: 20.0,),
                    title: Text(
                      'Bulk Sms',
                      style: TextStyle(color: Colors.black54,fontSize: 11.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.perm_identity, color: Colors.black54,size: 20.0,),
                    title: Text(
                      'Account',
                      style: TextStyle(color: Colors.black54,fontSize: 11.0),
                    ),
                  ),
                ],
                /* onTap: (index){
                  setState(() {
                    _currentIndex = index;
                  });
                },*/
              )*/
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          //currentIndex :_currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 20,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black54,
                size: 20.0,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.black54,
                size: 20.0,
              ),
              title: Text(
                'Shop',
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                color: Colors.black54,
                size: 20.0,
              ),
              title: Text(
                'Business',
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail_outline,
                color: Colors.black54,
                size: 20.0,
              ),
              title: Text(
                'Bulk Sms',
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity,
                color: Colors.black54,
                size: 20.0,
              ),
              title: Text(
                'Account',
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ),
          ],

          /* onTap: (index){
                  setState(() {
                    _currentIndex = index;
                  });
                },*/
        ),
      ),
    );
  }
}
