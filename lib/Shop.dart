import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shops();
  }
}

class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.share,
                  ),
                  Text(
                    'Shop',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 15.0,
                    backgroundImage: AssetImage('images/jared.jpg'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              width: 400.0,
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                        //  style:BorderStyle.soli
                      ),
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black26)),
                ),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'All Categories',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 120,
                      child: Card(
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text(
                            'Woman',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 120,
                      child: Card(
                        color: Colors.redAccent,
                        child: Center(
                          child: Text(
                            'Man',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 120,
                      child: Card(
                        color: Colors.lightGreen,
                        child: Center(
                          child: Text(
                            'Kids',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Out of Stock',
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(

                  children: <Widget>[
                    Container(
                      height: 192,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/jared.jpg'),
                              height: 120.0,
                            ),
                            ButtonTheme(
                             // height: 25.0,
                              minWidth: 20.0,
                              child: FlatButton(
                                onPressed: null,
                                color: Colors.yellow,
                                disabledTextColor: Colors.white,
                                child: Text('Out of Stock'),
                                disabledColor: Colors.yellow,
                              ),
                            ),
                            Text('Women T-Shirt')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 192,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/jared.jpg'),
                              height: 120.0,
                            ),
                            ButtonTheme(
                              // height: 25.0,
                              minWidth: 20.0,
                              child: FlatButton(
                                onPressed: null,
                                color: Colors.yellow,
                                disabledTextColor: Colors.white,
                                child: Text('Out of Stock'),
                                disabledColor: Colors.yellow,
                              ),
                            ),
                            Text('Men T-Shirt')
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 192,
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/jared.jpg'),
                              height: 120.0,
                            ),
                            ButtonTheme(
                              // height: 25.0,
                              minWidth: 20.0,
                              child: FlatButton(
                                onPressed: null,
                                color: Colors.yellow,
                                disabledTextColor: Colors.white,
                                child: Text('Out of Stock'),
                                disabledColor: Colors.yellow,
                              ),
                            ),
                            Text('Kids T-Shirt')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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

/*


body: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
Container(
margin: EdgeInsets.symmetric(horizontal: 15.0),
padding: EdgeInsets.all(8.0),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Icon(
Icons.share,
),
Text(
'Shop',
style: TextStyle(
fontSize: 20.0,
color: Colors.black,
fontFamily: 'Open Sans',
fontWeight: FontWeight.bold),
),
CircleAvatar(
backgroundColor: Colors.grey,
radius: 15.0,
backgroundImage: AssetImage('images/jared'),
)
],
),
),
SizedBox(
height: 40.0,
),
Container(
margin: EdgeInsets.symmetric(horizontal: 8.0),
width: 400.0,
height: 40.0,
child: TextField(
decoration: InputDecoration(
fillColor: Colors.white,
prefixIcon: Icon(
Icons.search,
color: Colors.black,
),
suffixIcon: Icon(
Icons.save,
color: Colors.black,
),
enabledBorder: const OutlineInputBorder(
borderRadius: BorderRadius.all(
Radius.circular(15.0),
//  style:BorderStyle.soli
),
borderSide: BorderSide(
style: BorderStyle.solid, color: Colors.black26)),
),
),
),
SizedBox(
height: 20.0,
),
Container(
margin: EdgeInsets.symmetric(horizontal: 8.0),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Text(
'All Categories',
style: TextStyle(
fontFamily: 'Open Sans',
fontWeight: FontWeight.bold,
fontSize: 20.0),
),
Text(
'See all',
style: TextStyle(
fontFamily: 'Open Sans',
fontSize: 12.0,
fontWeight: FontWeight.bold),
)
],
),
),
SizedBox(
height: 4.0,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Container(
height: 60.0,
width: 100,
child: Card(
color: Colors.blueAccent,
child: Center(
child: Text(
'Woman',
style: TextStyle(color: Colors.black),
),
),
),
),
Container(
height: 60.0,
width: 100,
child: Card(
color: Colors.redAccent,
child: Center(
child: Text(
'Man',
style: TextStyle(color: Colors.black),
),
),
),
),
Container(
height: 60.0,
width: 100,
child: Card(
color: Colors.lightGreen,
child: Center(
child: Text(
'Kids',
style: TextStyle(color: Colors.black),
),
),
),
),
],
),
SizedBox(
height: 10.0,
),
Container(
margin: EdgeInsets.symmetric(horizontal: 8.0),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Text(
'Out of Stock',
style: TextStyle(
fontFamily: 'Open Sans',
fontWeight: FontWeight.bold,
fontSize: 15.0),
),
Text(
'See all',
style: TextStyle(fontSize: 12.0),
)
],
),
),
Container(
padding: EdgeInsets.all(8.0),
height: 185.0,
child: Row(
children: <Widget>[
Container(
height: 190.0,
// width: 80.0,

child: ListView(
scrollDirection: Axis.horizontal,
children: <Widget>[
Container(
width: 160.0,
child: Card(
child: Wrap(
children: <Widget>[
Image(
image: AssetImage('images/jared.jpg'),
),
ListTile(
title: RaisedButton(onPressed: null,
color: Colors.yellow,
disabledColor: Colors.yellow,
textColor: Colors.white,),
subtitle: Text('Woman T-Shirt'),
)
],
),
),
),
Container(
width: 160.0,
child: Card(
child: Wrap(
children: <Widget>[
Image(
image: AssetImage('images/jared.jpg'),
),
ListTile(
title: RaisedButton(onPressed: null,color: Colors.yellow,
disabledColor: Colors.yellow,
textColor: Colors.white,),
subtitle: Text('Man T-Shirt'),
)
],
),
),
),
Container(
width: 160.0,
child: Card(
child: Wrap(
children: <Widget>[
Image(
image: AssetImage('images/jared.jpg'),
),
ListTile(
title: RaisedButton(
onPressed: null,
color: Colors.yellow,
disabledColor: Colors.yellow,
textColor: Colors.white,
child: Text('Out Of Stock'),
),
subtitle: Text('Kids T-Shirt'),
)
],
),
),
)
],
)),
],
),
),
/*BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                iconSize: 20,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.black54),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shop,
                      color: Colors.black54,
                    ),
                    title: Text(
                      'Shop',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.business, color: Colors.black54),
                    title: Text(
                      'Business',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.sms, color: Colors.black54),
                    title: Text(
                      'Sms',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.perm_identity, color: Colors.black54),
                    title: Text(
                      'Account',
                      style: TextStyle(color: Colors.black54, fontSize: 10.0),
                    ),
                  ),
                ],
              )*/
]),*/
