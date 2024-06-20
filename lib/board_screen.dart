import 'package:flutter/material.dart';

class BoardScreen extends StatelessWidget {
  static const String routeName = "BoardScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
      title: Text("Remoon X_O"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("Player 1"),
                  SizedBox(height: 5,),
                  Text("Score: ")
                ],
              ),
              Column(
                children: [
                  Text("Player 2"),
                  SizedBox(height: 5,),
                  Text("Score: ")
                ],
              ),

            ],
          ),
          Row(
            children: [
              FilledButton(onPressed: (){}, child: Text("x")),
              FilledButton(onPressed: (){}, child: Text("x")),
              FilledButton(onPressed: (){}, child: Text("x")),
            ],
          ),
          Row(
            children: [
              FilledButton(onPressed: (){}, child: Text("x")),
              FilledButton(onPressed: (){}, child: Text("x")),
              FilledButton(onPressed: (){}, child: Text("x")),
            ],
          ),
          Row(
            children: [
              FilledButton(onPressed: (){}, child: Text("x")),
              FilledButton(onPressed: (){}, child: Text("x")),
              FilledButton(onPressed: (){}, child: Text("x")),
            ],
          ),
        ],
      )

    );
  }
  
}