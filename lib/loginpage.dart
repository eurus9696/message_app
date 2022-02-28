import 'package:flutter/material.dart';
import 'package:robert_brunhage_app/myhomepage.dart';
import 'package:robert_brunhage_app/tasks_page.dart';

class loginpage extends StatelessWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login page')),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name='';
  bool bol=false;
  TextEditingController controller=new TextEditingController();
  void click(){
      this.name=controller.text;
      if (this.name==''){
        this.name='new user';
      }

        Navigator.push(
        context, MaterialPageRoute(builder: (context)=>myhomepage(this.name)));
  }
  void press(){
     Navigator.push(
        context, MaterialPageRoute(builder: (context)=>mytaskpage(this.bol)));
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[ Align(
      alignment: Alignment.topCenter,
    child: Padding(padding: EdgeInsets.all(10),
    child: TextField(controller: this.controller,
    decoration: InputDecoration(
     prefixIcon: Icon(Icons.lock_outline),
     labelText: "Username:",
     border: OutlineInputBorder(
       borderSide: BorderSide(width: 4,
       color: Colors.lightBlue)),
      suffixIcon:IconButton(
       icon: Icon(Icons.fingerprint_sharp),
       splashColor: Colors.blueGrey,
       tooltip: "login name",
       onPressed: this.click ,
       )  
    ),
    )
   ),),
   Expanded(child: IconButton(
     onPressed: this.press,
    icon: Icon(Icons.task_alt),
    splashColor: Colors.black,
    splashRadius: 220,
    highlightColor: Colors.lightBlue,
    tooltip: 'task page',
    iconSize: 80,
    alignment: Alignment.center,
    ))
   ]);
  }
}