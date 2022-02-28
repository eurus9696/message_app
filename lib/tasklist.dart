import 'package:flutter/material.dart';
class task{
  String name;
  bool value=false;
  task(this.name,this.value);
}
class Tasklist extends StatefulWidget {
  
  final List<task> listitems;
  Tasklist(this.listitems);
  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {

  void likes(Function callback){
    this.setState(() {
      callback();
    });
  }
   
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) 
        return Colors.blue;
     else{
        return Colors.red; }
    }
    return ListView.builder(
      itemCount: this.widget.listitems.length,
      itemBuilder: (BuildContext context, int index) {
        var task = this.widget.listitems[index];
        return Card(child: Row(children: <Widget>[
          Expanded(
            child: ListTile(
              textColor: Colors.blue,
              title: Text(task.name),
              subtitle: Text("important"),
              )
          ),
           Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      overlayColor: MaterialStateProperty.resolveWith(getColor),
      value: task.value,
      onChanged: (bool? value) {
        setState(() {
          task.value = value!;
         });
        }         
      )]
     ));
    },);
  }
}