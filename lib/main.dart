import 'package:flutter/material.dart';

import 'package:rolldice/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(70, 22, 2, 2),
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Color.fromRGBO(236, 220, 73, 0.765),
        ),
        body: Dice(),
      ),
    ),
  );
}
