// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tutorialapp/drawser.dart';

void main(){
  var themeData = ThemeData(
      primarySwatch: Colors.green,
    );
  runApp(MaterialApp(
    title: "First App",
    home: HomePage(),
    theme: themeData
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  var myText = "The girl with dragon tatto";
  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),

      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assest/the_girl_with_dragon_tatoo.jpg',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
            Text(
              myText,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter here",
                  labelText: "Book name",
                ),
              ),
              ),
            ],
          ),
        ),
      ),

      drawer: Mydrawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText = _nameController.text;
          setState(() {
          });
        },
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.lightBlue,
        ),
    );
  }
}