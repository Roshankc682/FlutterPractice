// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:tutorialapp/2.dart';
import 'package:tutorialapp/drawser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:tutorialapp/login_page.dart';
import 'package:tutorialapp/Constant.dart';
import 'package:tutorialapp/url_get.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Constant.prefs=  await SharedPreferences.getInstance();
 
  // var themeData = ThemeData(
  //   primarySwatch: Colors.green,
  // );
  // runApp(MaterialApp(title: "App",
  // home: HomePage(), theme: themeData));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "App",

  // home: Constant.prefs.getBool("loggedin")==false
  // ? HomePage()
  // :
  // LoginPage(),
  // home: LoginPage(),
  home: HomePage(),
  theme: ThemeData(),
  routes: {
    "/login":(context)=> LoginPage(),
    "/home":(context)=> HomePage()},
  ),
  );
}

