import 'package:flutter/material.dart';
import 'package:tutorialapp/drawser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:tutorialapp/Constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 final TextEditingController _nameController = TextEditingController();
  var myText = "The girl with dragon tatto";
  var url = "https://jsonplaceholder.typicode.com/albums/1/photos";
  var data;
  @override
  void initState() {
    // Constant.prefs.setBool("loggedin", false);
    super.initState();
    getData();
  }

  getData() async {
    print("==========This is home Page======================");
    print(Constant.prefs);
    print("================================");
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    print(res.body);
  }

 @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        actions: <Widget>[
          IconButton(onPressed: (){
            Constant.prefs.setBool("loggedin", false);
            Navigator.pushReplacementNamed(context, "/login");
          }, icon: const Icon(Icons.logout))
        ],
      ),
      body:
      Card(
        // child:CircularProgressIndicator()
        child: data != null
            ? Center(
               child:
               ListView.builder(
              itemBuilder: (context, index) {
                return
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(data[index]["title"]),
                          leading: Image.network(data[index]["url"]),
                          ),
                      );
              })
            )
            : const Center(
              child: CircularProgressIndicator()
              ),
      ),
      // drawer: Mydrawer(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     myText = _nameController.text;
      //     setState(() {});
      //   },
        // child: const Icon(Icons.refresh),
        // backgroundColor: Colors.lightBlue,
    );
  }
}


