import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/Shop.dart';
import 'Transactions.dart';
import 'WelcomeOverview.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Text('Nothing On Accounts',style: TextStyle(fontSize: 30.0),),),
      ),
    );
  }
}
