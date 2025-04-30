import 'dart:math';

import 'package:flutter/material.dart';

class Positions extends StatefulWidget {
   Positions({super.key});

  @override
  State<Positions> createState() => _PositionsState();
}

class _PositionsState extends State<Positions> {
    bool vasible=true;
   double height =100;
Color color = Colors.blue;
   double width =120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Random random =Random();
            vasible=!vasible;
             
             color = Color.fromRGBO(
              random.nextInt(256), random.nextInt(256), random.nextInt(256), 1
              );
           setState(() {
             
           });
        },
        child: Icon(Icons.flip),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black12,
            ),
            Center(
              child: Text("My text", style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold
              ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 3),
              curve: Curves.linear,
              bottom: vasible==true?500:300,
              right: 100,
              child: Container(
                width: 200,
                height: 100,
                color: color,
              ),
            ),
          ],
        ),
    );
  }
}