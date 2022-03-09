import 'package:flutter/material.dart';
import 'package:message_app/loginpage.dart';
import 'tasks_page.dart';

class newloginpage extends StatelessWidget {
  const newloginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: pages(),

    );
  }
}

class pages extends StatefulWidget {
  const pages({ Key? key }) : super(key: key);

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  bool bol=false;
   void press(){
     Navigator.push(
        context, MaterialPageRoute(builder: (context)=>mytaskpage(this.bol)));
  }
  void touch(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));}
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[Expanded(child:
     IconButton(
     onPressed: this.press,
    icon: Icon(Icons.task_alt),
    splashColor: Colors.black,
    splashRadius: 220,
    highlightColor: Colors.lightBlue,
    tooltip: 'task page',
    iconSize: 80,
    alignment: Alignment.center,
    )),
    IconButton(onPressed: this.touch, 
    icon: Icon(Icons.message_rounded),
    splashColor: Colors.black,
    splashRadius: 220,
    highlightColor: Colors.lightBlue,
    tooltip: 'login page',
    iconSize: 80,
    alignment: Alignment.bottomCenter,)
    ],
      
    );
  }
}