import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var iconDecor = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star,  color: Colors.green[500],),
        Icon(Icons.star, color: Colors.green[500]),
      ],
    );
    var myCustomRow = Center(
        child: Container(
            child: Row(
      children: <Widget>[
        iconDecor,
        Text('170 Reviews',
            style: TextStyle(
              color: Colors.black,
            )),
      ],
    )));

    return myCustomRow;
  }
}

/*
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      //prebuilt widget put the text in the appbar
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

//for textview which doesn't change (For static widget) statelessWidget
class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color:Colors.amberAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello Myan!',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
*/
