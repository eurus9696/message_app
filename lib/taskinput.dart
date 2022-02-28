import 'package:flutter/material.dart';

class taskinputwidget extends StatefulWidget {
 final Function(String) callback;
 taskinputwidget(this.callback);
  @override
  _taksinputwidget createState() => _taksinputwidget();
}

class _taksinputwidget extends State<taskinputwidget> {
  final controller = TextEditingController();

  String text="";

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }
    void click(){
        widget.callback(controller.text);
        FocusScope.of(context).unfocus();
        controller.clear();
    }
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: this.controller,
        decoration: InputDecoration(
         prefixIcon: Icon(Icons.add_task),
          labelText:"Enter the task:",
        suffixIcon: IconButton(
          icon: Icon(Icons.add),
            splashColor: Color.fromARGB(255, 5, 165, 245),
            tooltip: "Add task",
            onPressed: this.click,
        )
      )
    );
  }
} 