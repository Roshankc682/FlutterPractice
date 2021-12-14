// import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     title: "First App",
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Page"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(9.0),
//         child: Container(
//           color: Colors.black,
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//             Container(
//               padding: const EdgeInsets.all(8),
//               width: 100,
//               height: 100,
//               color: Colors.red,
//           ),
//           Container(
//               padding: const EdgeInsets.all(8),
//               width: 100,
//               height: 100,
//               color: Colors.green,
//           ),
//           Container(
//               padding: const EdgeInsets.all(8),
//               width: 100,
//               height: 100,
//               color: Colors.yellow,
//           ),
//             ],
//             ),
//         ),
//       ),
//     );
//   }
// }