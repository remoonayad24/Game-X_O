import 'package:flutter/material.dart';
typedef boardClick =void Function(int);

class BoardButton extends StatelessWidget {

  String title;
  boardClick onBoardClicked;
  int index;

  BoardButton(this.title, this.onBoardClicked,this.index);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
           margin:EdgeInsets.all(3),
          child: FilledButton(onPressed: (){
            onBoardClicked(index);
          },
            child: Text(title, style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
    ),),
        )));

  }
}
