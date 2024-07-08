import 'package:flutter/material.dart';
import 'package:xo/board_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routename = "LoginScreen";
  LoginScreen({super.key});
   String player1 = " ";
   String player2 = " ";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/55.jpg'),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Login...", style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),),
          centerTitle: true,
        ),

        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (String value){
                  player1 = value;
                },
                decoration: InputDecoration(
                  hintText: 'Player 1 (X) Name',
                ),
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                onChanged: (String value){
                  player2 = value;
                },
                decoration: InputDecoration(
                  hintText: 'Player 2 (O) Name'

                ),
                style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              FilledButton(onPressed: (){
                Navigator.of(context).pushNamed(BoardScreen.routeName,
                  arguments: BoardScreenArgs(player1,player2)

                );
              }
              , child: Text('Go to Game', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
