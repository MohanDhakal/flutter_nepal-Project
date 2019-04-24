import 'package:flutter/material.dart';

final widget_height = 100.0;
final border = BorderRadius.circular(widget_height / 2);

/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.

class Category extends StatelessWidget {
  /// Creates a [Category].
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category(
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  )   : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  /// Builds a custom widget that shows [Category] information.
  /// This information includes the icon, name, and color for the [Category].

  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html

  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    var myCustomRow = Center(
        child: Container(
      child: InkWell(
        borderRadius: border,
        highlightColor: color,
        splashColor: color,
        onTap: () => print('I was tapped!'),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              iconLocation,
              size: 60,
              color: color,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.purple),
            )
          ],
        ),
      ),
    ));

    return myCustomRow;
  }
}

/*
import 'package:flutter/material.dart';

// underscore means the variables are private
//final _rowHeight = 100.0; //in pixels
//final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 40.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        //margin padding property are in EdgeInsets class
        //margin padding property are in EdgeInsets class
        margin: EdgeInsets.all(10),

        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Flight",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.deepOrange,
                          fontSize: 30,
                          fontStyle: FontStyle.italic),
                      textDirection: TextDirection.ltr),
                ),
                Expanded(
                  child: Text("This isn't a flight anymore",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.brown,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      textDirection: TextDirection.ltr),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Flight 2",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.deepOrange,
                          fontSize: 30,
                          fontStyle: FontStyle.italic),
                      textDirection: TextDirection.ltr),
                ),
                Expanded(
                  child: Text("This is a flight now",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.brown,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      textDirection: TextDirection.ltr),
                )
              ],
            ),
            FlightImageAssest(),
            FootballTicketBooking()
          ],
        ),
      ),
    );
  }
}

class FlightImageAssest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/logo.jpg');
    Image image = Image(
      image: assetImage,
      height: 200,
      width: 250,
    );
    return Container(
      child: image,
    );
  }
}

class FootballTicketBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      width: 250,
      height: 50,
      child: RaisedButton(
          color: Colors.green,
          child: Text(
            "Book Your Football Ticket",
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          elevation: 10.0,
          onPressed: () => bookFlight(context)),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("FLight Booked Sucessfully"),
      content: Text("Have a pleasent flight"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
*/
