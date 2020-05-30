import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transaction();
  }
}

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60.0,
                    ),
                    Center(
                      child: Text(
                        'Transactions',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black26,
                      radius: 12.0,
                      backgroundImage: AssetImage('images/jared.jpg'),

                    )
                  ],
                ),
              ),



                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Card(
                              margin: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ButtonTheme(minWidth: 60.0,
                                        child: RaisedButton(


                                          onPressed: null,
                                          disabledColor: Colors.purpleAccent,
                                          color: Colors.purple,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: new BorderRadius
                                                  .circular(30.0)),
                                          padding: EdgeInsets.all(10.0),
                                          child: Text(
                                            'All',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      ButtonTheme(minWidth: 60.0,
                                        child: RaisedButton(
                                          onPressed: null,
                                          color: Colors.white,
                                          // disabledColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: new BorderRadius
                                                  .circular(30.0)),
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            'Week',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      ButtonTheme(minWidth: 60.0,
                                        child: RaisedButton(
                                          onPressed: null,
                                          //  disabledColor: Colors.white,//TODO
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: new BorderRadius
                                                  .circular(32.0)),
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            'Month',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  //SizedBox(height: 5.0),
                                  ListTile(
                                    title: Text(
                                      'Ksh 52,070.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    subtitle: Text(
                                      'Total Earnings',
                                      style: TextStyle(fontSize: 10.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceAround,
                                    children: <Widget>[
                                      Text(
                                        'Mon',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Tue',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Wed',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Thur',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Fri',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Sat',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      Text(
                                        'Sun',
                                        style: TextStyle(fontSize: 12.0),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            width: 400.0,
                            height: 40.0,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search Transactions',
                                hintStyle: TextStyle(fontSize: 12.0),
                                fillColor: Colors.white,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.0),
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      //style: BorderStyle.solid,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '-THIS MONTH-',
                              style: TextStyle(
                                  color: Colors.purpleAccent, fontSize: 10.0),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),

                          Container(
                            // padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                            height: 55.0,
                            //width: 20.0,

                            child: Card(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.get_app,
                                    size: 30.0,
                                    color: Colors.purple,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'City Bank Limited',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.0),
                                        ),
                                        Text(
                                          'Transfer to bank- Completed',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 6.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '-Ksh 500.00',
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Mar 03',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                            height: 55.0,
                            child: Card(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.get_app,
                                    size: 30.0,
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: <Widget>[
                                        Text(
                                          'Payment From Sam',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.0),
                                        ),
                                        Text(
                                          'Transfer to bank- Completed',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '+Ksh 500.00',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Mar 03',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                            height: 55.0,
                            child: Card(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.get_app,
                                    size: 30.0,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: <Widget>[
                                        Text(
                                          'Invoice From Obare',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.0),
                                        ),
                                        Text(
                                          'Transfer to bank- Completed',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '+Ksh 1500.00',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Mar 03',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                            height: 55.0,
                            child: Card(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.get_app,
                                    size: 30.0,
                                    color: Colors.orange,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: <Widget>[
                                        Text(
                                          'Payment From Sam',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.0),
                                        ),
                                        Text(
                                          'Transfer to bank- Completed',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '+Ksh 500.00',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Mar 03',
                                          style: TextStyle(fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),


             /* BottomNavigationBar(
                backgroundColor: Colors.white,
                // currentIndex :_currentIndex,
                type: BottomNavigationBarType.fixed,
                iconSize: 20,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.black54, size: 20.0,),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shop,
                      color: Colors.black54, size: 20.0,
                    ),
                    title: Text(
                      'Shop',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet, size: 20.0,),
                    title: Text(
                      'Transactions',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                        Icons.mail_outline, size: 20.0, color: Colors.black54),
                    title: Text(
                      'sms',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.perm_identity, color: Colors.black54, size: 20.0,),
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
              )*/
            ],
          ),
        ),
        /*bottomNavigationBar: BottomNavigationBar(
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
        ),*/
      ),
    );
  }
}
