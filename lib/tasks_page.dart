import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:message_app/tasklist.dart';
import 'package:message_app/taskinput.dart';
import 'textinputwidget.dart';

class mytaskpage extends StatefulWidget {
  final bool name;
  mytaskpage(this.name);
  @override
  _mytaskpage createState() => _mytaskpage();
}
@override
 class _mytaskpage extends State<mytaskpage> {
@override
List<task> tasks =[];
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-Do')),
      body:Column(
        children: <Widget> [ Expanded(child: Tasklist(this.tasks)),
       taskinputwidget(newpost) ]
      )
    );
  }

void newpost(String text){
  this.setState(() {
    tasks.add(new task(text,widget.name));
  });
   
 }
}

