// // import 'package:flutter/material.dart';

// // void main(){
// //   runApp(MaterialApp(
// //     title: "First App",
// //     home: HomePage(),
// //   ));
// // }

// // class HomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Home Page"),
// //       ),
// //       body: Center(child: Text("Home Page")),
// //     );
// //   }
// // }
// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:tutorialapp/drawser.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   var themeData = ThemeData(
//     primarySwatch: Colors.green,
//   );
//   runApp(MaterialApp(title: "First App", home: HomePage(), theme: themeData));
// }

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController _nameController = TextEditingController();
//   var myText = "The girl with dragon tatto";
//   var url = "https://jsonplaceholder.typicode.com/albums/1/photos";
//   var data;

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   getData() async {
//     var res = await http.get(Uri.parse(url));
//     data = jsonDecode(res.body);
//     setState(() {});
//     // print(res.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile Page"),
//       ),
//       body:
//       Card(
//         child: data != null
//             ? Center(
//                child:
//                ListView.builder(
//               itemBuilder: (context, index) {
//                 return
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: ListTile(
//                           title: Text(data[index]["title"]),
//                           leading: Image.network(data[index]["url"]),
//                           ),
//                       );
//               })
//             )
//             : Center(
//               child: CircularProgressIndicator()
//               ),
//       ),
//       drawer: Mydrawer(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           myText = _nameController.text;
//           setState(() {});
//         },
//         child: const Icon(Icons.refresh),
//         backgroundColor: Colors.lightBlue,
//       ),
//     );
//   }
// }
