import 'package:flutter/material.dart';
import 'package:robert_brunhage_app/loginpage.dart';
import 'package:robert_brunhage_app/new_login.dart';
import 'postlist.dart';
import 'textinputwidget.dart';
import 'myhomepage.dart';
import 'post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: newloginpage(),
    );
  }
}


 
