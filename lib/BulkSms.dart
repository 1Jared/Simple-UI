import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/Shop.dart';
import 'Transactions.dart';
import 'WelcomeOverview.dart';

class BulkSms extends StatefulWidget {
  @override
  _BulkSmsState createState() => _BulkSmsState();
}

class _BulkSmsState extends State<BulkSms> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Text('Nothing on Bulk Sms',style: TextStyle(fontSize: 30.0),),),
      ),
    );
  }
}
