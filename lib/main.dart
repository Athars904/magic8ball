import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  const MaterialApp(
    
    home: MyApp(),
  ),
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Ball(),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Ask me Anything',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
  
}
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imagenuber=1;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Center(
        child: Row(
          children:<Widget> [
            Expanded(child: Padding(padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  imagenuber=Random().nextInt(5)+1;
                  print('I got clicked');
      
                });
              },
                child: Image.asset('images/ball$imagenuber.png')),),),
          ],
        ),
      ),
    );
  }
}

