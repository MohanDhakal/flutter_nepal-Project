import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final double height = 100;
  final IconData ic;
  final Color colors;
  final String text;

  //required checks if the parameter has been passed or not and the assert checks
  //if the sent parameters are null or not
  const Category({
    @required this.text,
    @required this.colors,
    @required this.ic,
  })  : assert(text != null),
        assert(colors != null),
        assert(ic != null);

  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Center(
        child: InkWell(
      borderRadius: BorderRadius.circular(height / 2),
      highlightColor: this.colors,
      splashColor: this.colors,
      onTap: () {
        print("I am pressed");
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
          ],
        ),
      ),
    ));
  }
}
