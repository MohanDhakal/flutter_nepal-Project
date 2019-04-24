import "package:flutter/material.dart";

void main() {
   runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget getBox(Color myColor) => Container(
        width: 200,
        height: 200,
        color: myColor,
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "Study Jam Messenger",
          textDirection: TextDirection.ltr,
        )),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                onTap: () => print("printing here!"),
                title: Text("Home"),
                subtitle: Text("Setting"),
                trailing: Icon(Icons.add),
              ),
              //list tile widget
              getBox(Colors.red),
              getBox(Colors.blue),
              getBox(Colors.pink),
              getBox(Colors.purple),
              getBox(Colors.black),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  currentAccountPicture: Image.network("https://png.pngtree.com/svg/20170331/businessman_863430.png"),
                  accountEmail: Text("mohandkl.512@gmail.com"),
                  accountName: Text("mohan")),
              ListTile(
                onTap: () => print("printing here!"),
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                onTap: () => print("printing here!"),
                title: Text("Setting"),
                leading: Icon(Icons.settings),
              ),
              ListTile(
                onTap: () => print("printing here!"),
                title: Text("About Us"),
                leading: Icon(Icons.description),
              )
            ],
          ),
          elevation: 10,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("I am pressed"),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

/*
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ' UnitConverter App',
        home: CategoryRoute()
    );
  }
}
*/

/*
// arrow function "=>" instead of "{}"
void main() =>
//constructor  of the MyFlutterAPp
    runApp(MaterialApp(
        title: "Exploring Listview Widget",
        home: Scaffold(
          appBar: AppBar(title:Text("Basic List View"),),
          body: getListView(),
        )));

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()=> debugPrint("landScape tapped"),
      ),  ListTile(
        leading: Icon(Icons.laptop),
        title: Text("Laptop"),
        subtitle: Text("Beautiful Laptop"),
        trailing: Icon(Icons.laptop_windows),
      )
    ],
  );
  return listView;
}

class MyFlutterApp extends StatelessWidget {
  //ltr means left to right for english
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My first app screen"),
            ),
            body: Category()));
  }
}
*/
