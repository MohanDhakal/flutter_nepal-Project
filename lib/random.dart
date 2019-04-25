import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  String _name = "Mohan";
  String _lastName = "Dhakal";
  Color _color = Colors.redAccent;

//  TextEditingController _nameController = TextEditingController();
//  TextEditingController _surnameCOntroller = TextEditingController();
  GlobalKey<FormState> myGlobalKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Next App"),
        ),
        body: Form(
          key: myGlobalKey,
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  //for input feild from user edittext
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return ("This feild cannot be empty");
                      } else return null;
                    },
                    onSaved: (value) {
                      _name = value;
                    },
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        hintText: "Enter Number 1"),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return ("This feild cannot be empty");
                      } else
                        return null;
                    },
                    onSaved: (value) {
                      _lastName = value;
                    },
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        hintText: "Enter Number 1"),
//                    controller: _surnameCOntroller,
//                    keyboardType: TextInputType.number,
                  ),
                  Text(
                    this._name+this._lastName,
                    style: TextStyle(fontSize: 25, color: this._color),
                  ),
                  RaisedButton(
                    onPressed: this._defaultValueChange,
                    child: Text("change Value"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _defaultValueChange() {
    setState(() {
//      double value1 = double.parse(_nameController.value.text);
//      double value2 = double.parse(_surnameCOntroller.value.text);
//      //use of terniary operator
//      _color = _color == Colors.redAccent ? Colors.blueGrey : Colors.redAccent;
//      _name = (value1 + value2).toString();
      if (!myGlobalKey.currentState.validate()) {
        return;
      }
      myGlobalKey.currentState.save();
      setState(() {});
    });
  }
}
