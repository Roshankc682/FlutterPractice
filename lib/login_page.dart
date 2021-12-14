// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:tutorialapp/2.dart';
import 'package:tutorialapp/Constant.dart';

class LoginPage extends StatelessWidget{
  final userName = TextEditingController();
  final Pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
  ),
  body: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image.asset(
                'assest/the_pale_blue_dor.jpg',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.4),
                colorBlendMode: BlendMode.darken,
              ),
  Center(
    child: SingleChildScrollView(
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter username",labelText: "Username"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // TextFormField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(hintText: "Enter password",labelText: "Password"),
                      // )
                    ],
                  ),
                ),),
            ), const SizedBox(height: 20,),
          RaisedButton(onPressed: (){
            Constant.prefs.setBool("loggedin", true);
            // Navigator.push(
            //   context,
            // MaterialPageRoute(builder:
            // (context)=> HomePage())
            // );
            // Navigator.pushNamed(context, "/home");
            Navigator.pushReplacementNamed(context, "/home");
          },
          child: const Text("Enter Home"),
          color: Colors.black,
          textColor: Colors.white,)
          ],
        ),
      ),
    ),
  ),
    ],
  )
    );
  }
}