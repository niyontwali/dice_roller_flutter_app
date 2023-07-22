import 'package:dice_roller_app/dice_roller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Dice Roller',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: const Color(0xFFe7dd4d),
          ),
          body: const DiceRoller()),
    ),
  );
}
