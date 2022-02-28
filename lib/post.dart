import 'package:flutter/material.dart';

class post{
  String body;
  String author;
  int like=0;
  bool userlike=false;

  post(this.body,this.author);

  void postlikes(){
    this.userlike=!this.userlike;
    if(this.userlike){
      this.like+=1;
    }
    else{
      this.like-=1;
    }
  }
}
 
 