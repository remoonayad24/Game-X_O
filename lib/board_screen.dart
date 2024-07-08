import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:xo/board_button.dart';

class BoardScreen extends StatefulWidget {
  static const String routeName = "BoardScreen";

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  List<String> board = [
    ' ', ' ', ' ',
    ' ', ' ', ' ',
    ' ', ' ', ' ',
  ];
  int score1 = 0;
  int score2 = 0;


  @override
  Widget build(BuildContext context) {
    BoardScreenArgs args = ModalRoute.of(context)?.settings.arguments as BoardScreenArgs;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent[400],
          title: Text("Remoon Game X_O", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.deepPurple[200],
          child: Column(

            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${args.player1Name} (X)", style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 5,),
                        Text("Score: $score1 ", style: TextStyle(
                          fontSize: 20,
                        ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${args.player2Name} (O)", style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 5,),
                        Text("Score: $score2", style: TextStyle(
                          fontSize: 20,
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BoardButton(board[0], onBoardButtonClick, 0),
                    BoardButton(board[1], onBoardButtonClick, 1),
                    BoardButton(board[2], onBoardButtonClick, 2),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BoardButton(board[3], onBoardButtonClick, 3),
                    BoardButton(board[4], onBoardButtonClick, 4),
                    BoardButton(board[5], onBoardButtonClick, 5),

                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BoardButton(board[6], onBoardButtonClick, 6),
                    BoardButton(board[7], onBoardButtonClick, 7),
                    BoardButton(board[8], onBoardButtonClick, 8),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }

  int counter = 0;
  void onBoardButtonClick(int index) {
    print("Button Clicked : $index");
      if (counter.isEven) {
        board[index] = 'X';
        score1 += 1;
        counter++;
        if(checkWinner('X')){
          print('player 1 is winner');
          score1+=100;
          resetGame();
        }
      } else {
        board[index] = 'O';
        score2 += 1;
        counter++;
        if(checkWinner('O')){
          print('player 2 is winner');
          score2+=100;
          resetGame();
        }
      }
      if(counter==9){
        print('Drawer');
        resetGame();
      }
      setState(() {});
    }


  void resetGame(){
    board = [
      ' ', ' ', ' ',
      ' ', ' ', ' ',
      ' ', ' ', ' ',
    ];
    counter = 0;

  }
  bool checkWinner(String symbol) {
    for (int i=0 ; i<9; i+=3){
      if(board[i]==symbol && board[i+1]==symbol && board[i+2]==symbol){
        return true;
      }
    }
    for (int i = 0; i<3; i++){
      if(board[i]==symbol && board[i+3]==symbol && board[i+6]==symbol){
        return true;
      }
    }
    if(board[0]==symbol && board[4]==symbol && board[8]==symbol){
      return true;
    }
    if(board[2]==symbol && board[4]==symbol && board[6]==symbol){
      return true;
    }
    return false;
  }
}
class BoardScreenArgs{
  String player1Name;
  String player2Name;
  BoardScreenArgs(this.player1Name,this.player2Name);
}