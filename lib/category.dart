import 'package:flutter/material.dart';
import 'package:flutter_nepal/converter_route.dart';
import 'package:flutter_nepal/unit.dart';

class Category extends StatelessWidget {
  final double height = 100;
  final IconData ic;
  final Color colors;
  final String text;
  final List<Unit> units;

  //required checks if the parameter has been passed or not and the assert checks
  //if the sent parameters are null or not
  const Category(
      {@required this.text,
      @required this.colors,
      @required this.ic,
      @required this.units})
      : assert(text != null),
        assert(colors != null),
        assert(ic != null),
        assert(units != null);

  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(height / 2),
        highlightColor: this.colors,
        splashColor: this.colors,
        onTap: () {
          _navigateToConverter(context);
        },
        child: Container(
          height: height,
          padding: EdgeInsets.all(8),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(height / 2)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    this.ic,
                    size: 60,
                  ),
                ),
                Text(
                  this.text,
                  style: TextStyle(fontSize: 24),
                ),
              ]),
        ),
      ),
    );
  }

  /// Navigates to the [ConverterRoute].
  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              text,
              style: Theme.of(context).textTheme.display1,
            ),
            centerTitle: true,
            backgroundColor: colors,
          ),
          body: ConverterRoute(
            color: colors,
            name: text,
            units: units,
          ),
        );
      },
    ));
  }
}
