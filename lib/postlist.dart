import 'package:flutter/material.dart';
import 'post.dart';

class Postlist extends StatefulWidget {
  
  final List<post> listitems;
  Postlist(this.listitems);
  @override
  _PostlistState createState() => _PostlistState();
}

class _PostlistState extends State<Postlist> {
  void likes(Function callback){
    this.setState(() {
      callback();
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listitems.length,
      itemBuilder: (BuildContext context, int index) {
        var post = this.widget.listitems[index];
        return Card(child: Row(children: <Widget>[
          Expanded(
            child: ListTile(
              textColor: Colors.cyan,
              title: Text(post.body),
              subtitle: Text(post.author),
              
              
            )
          ),
          Row(
            children: <Widget>[
              Container(child: Text(post.like.toString(),
              style: TextStyle(fontSize: 15)),
              padding: EdgeInsets.fromLTRB(0, 0, 12, 0),),
              IconButton(
                icon: Icon(Icons.thumb_up_sharp),
              onPressed: ()=>this.likes(post.postlikes),
              color: post.userlike? Colors.green:Colors.blueGrey
              )
            ],
          )    
       ]),) ;
      },
    );
  }
}