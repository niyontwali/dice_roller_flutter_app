import 'dart:math';

import 'package:flutter/material.dart';

final randomized = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeRandomNum = 1;

  void onPressed() {
    setState(() {
      activeRandomNum = randomized.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/dice-$activeRandomNum.png',
            width: 150,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
