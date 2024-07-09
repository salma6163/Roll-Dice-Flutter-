import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_no1 = 1;
  int rolledNumber1 = 0;
  int result1 = 0; // Initialize with a default value

  void update1() {
    rolledNumber1 = dice_no1;
    setState(() {
      dice_no1 = Random().nextInt(6) + 1;
      result1 += rolledNumber1; // Update the result
    });
  }

  int dice_no2 = 1;
  int rolledNumber2 = 0;
  int result2 = 0; // Initialize with a default value

  void update2() {
    rolledNumber2 = dice_no2;
    setState(() {
      dice_no2 = Random().nextInt(6) + 1;
      result2 += rolledNumber2; // Update the result
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: FloatingActionButton(
                    child: Image.asset(
                      'images/dice$dice_no1.png',
                    ),
                    onPressed: () {
                      update1();
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Rolled: $rolledNumber1',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Result: $result1', // Display the result
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: FloatingActionButton(
                    child: Image.asset('images/dice$dice_no2.png'),
                    onPressed: () {
                      update2();
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Rolled: $rolledNumber2',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Result: $result2', // Display the result
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
