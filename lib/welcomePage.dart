import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/Accounts.dart';
import 'package:loginpage/BulkSms.dart';
import 'package:loginpage/FirstPage.dart';
import 'package:loginpage/Shop.dart';
import 'Transactions.dart';
import 'WelcomeOverview.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeState();
  }
}

class WelcomeState extends StatefulWidget {
  @override
  _WelcomeStateState createState() => _WelcomeStateState();
}

class _WelcomeStateState extends State<WelcomeState> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    Shop(),
    Transactions(),
    BulkSms(),
    Accounts()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //int _currentIndex  = 0;
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions[_selectedIndex],

          bottomNavigationBar:BottomNavigationBar(
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
                  Icons.account_balance_wallet,
                  color: Colors.black54,
                  size: 20.0,
                ),
                title: Text(
                  'Transactions',
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

           // currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
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
