import 'package:flutter/material.dart';
import 'textinputwidget.dart';
import 'post.dart';
import 'postlist.dart';

class myhomepage extends StatefulWidget {
  final String name;
  myhomepage(this.name);

  @override
  _myhomepageState createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  List<post> posts =[];

void newpost(String text){
  this.setState(() {
    posts.add(new post(text, widget.name));
  });

}

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blog App')),
      body:Column(
        children: <Widget> [
          Expanded(
            child: Postlist(this.posts)),
           textinputwidget(this.newpost)
        ]
      )
    );
  }
}
