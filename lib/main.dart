import 'package:flutter/material.dart';
import 'package:loginpage/welcomePage.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50.0),
              child: Image(
                image: AssetImage('images/swap.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              width: 400.0,
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Merchant Code',
                  hintStyle: TextStyle(fontSize: 12.0),
                  fillColor: Colors.white,
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
              width: 400.0,
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 12.0),
                  fillColor: Colors.white,
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  OutlineButton(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        //style: BorderStyle.solid
                      ),
                      child: Text(
                        'Forget Your Password?',
                        style: TextStyle(fontSize: 11.0),
                      )),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 6.0),
                width: 400.0,
                height: 40.0,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    disabledColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ))),
            SizedBox(
              height: 20.0,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 6.0),
                width: 400.0,
                height: 40.0,
                child: OutlineButton(
                    borderSide: BorderSide(
                        color: Colors.blue, style: BorderStyle.solid),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    //disabledColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.yellow),
                    )))
          ],
        ),
      ),
    );
  }
}
