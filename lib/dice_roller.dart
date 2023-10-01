
import 'dart:math';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 4;

  void rollDice() {

    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;

    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset( 'assets/img/dice-six-faces-$currentDiceRoll.png'),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice'),
        )
      ],
    );
  }
}
