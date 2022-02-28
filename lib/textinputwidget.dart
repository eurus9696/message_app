import 'package:flutter/material.dart';

class textinputwidget extends StatefulWidget {
 final Function(String) callback;
 textinputwidget(this.callback);
  @override
  _textinputwidgetState createState() => _textinputwidgetState();
}

class _textinputwidgetState extends State<textinputwidget> {
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
         prefixIcon: Icon(Icons.message_outlined),
          labelText:"Enter a message:",
        suffixIcon: IconButton(
          icon: Icon(Icons.send),
            splashColor: Color.fromARGB(255, 5, 165, 245),
            tooltip: "Post Message",
            onPressed: this.click,
        )
      )
    );
  }
} 