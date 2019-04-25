import "package:flutter/material.dart";
import './random.dart';
void main() => runApp(MyClass());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Chat App"),
        ),
        body: Column(
          children: <Widget>[
            ChatTitle(),
            SearchBar(),
            ChatStories(),
            personalChat("Leonel Messi", 'messi.jpg'),
            personalChat("Antonella Messi", 'messimarriage.jpg'),
            personalChat("Mohan Dhakal", 'mkd.jpg'),
            personalChat("Cristiano Ronaldo", 'man.png'),
            personalChat("Mohan Kumar Dhakal", 'mkd.jpg'),
          ],
        ),
      ),
    );
  }

  Widget personalChat(String message, String imageUri) => Container(
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          title: Text(message),
          subtitle: Text("You: I am one of best footballer"),
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('images/$imageUri'), fit: BoxFit.fill),
            ),
            width: 50,
            height: 50,
          ),
        ),
      );
}
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
            border: Border.all(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
          child: ListTile(
            title: Text(
              "Search",
              style: TextStyle(fontSize: 20, color: Colors.black26),
            ),
            leading: Icon(
              Icons.search,
              size: 40,
              color: Colors.black12,
            ),
          )),
    );
  }
}

//for stories and add story section
class ChatStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/plus.png'),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    "Your Story",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Image(
                    image: AssetImage('images/man.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Random",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/messimarriage.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Text(
                    "Anotonella",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/messi.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Messi",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

//for the title bar of the messenger app
class ChatTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/mkd.jpg'),
                              fit: BoxFit.fill)),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                  child: Text(
                    "Chats",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('images/camera.png'))),
                Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 10.0),
                    child: Image(
                      image: AssetImage('images/edit.png'),
                      height: 30,
                      width: 30,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
