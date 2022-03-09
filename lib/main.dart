import 'package:flutter/material.dart';
import 'package:message_app/new_login.dart';

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


 
