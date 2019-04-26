import 'package:flutter/material.dart';
import './category.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello Rectangle'),
          ),
          body: Category(
              ic: Icons.access_alarm, colors: Colors.amber, text: "MyTest")),
    ),
  );
}

// class HelloRectangle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         color: Colors.greenAccent,
//         height: 400.0,
//         width: 300.0,
//         child: Center(
//           child: Text(
//             'Hello!',
//             style: TextStyle(fontSize: 40.0),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }
