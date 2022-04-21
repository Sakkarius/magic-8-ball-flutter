import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.blue,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int randomNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    Random rng = new Random();
                    randomNumber = rng.nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$randomNumber.png')),
          ),
        ],
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}
