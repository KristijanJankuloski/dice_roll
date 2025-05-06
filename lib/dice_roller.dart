import 'dart:math';
import 'package:dice_roll/header_text.dart';
import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 3;
  int diceNumber2 = 3;

  void rollDice() {
    setState(() {
      diceNumber = random.nextInt(6) + 1;
      diceNumber2 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform(
          transform: Matrix4.rotationZ(0.2),
          child: Container(
            padding: EdgeInsets.only(left: 50),
            child: Image.asset('assets/dice-$diceNumber.png', width: 150),
          ),
        ),
        const SizedBox(height: 20),
        Transform(
          transform: Matrix4.rotationZ(-0.2),
          child: Container(
            padding: EdgeInsets.only(right: 50),
            child: Image.asset('assets/dice-$diceNumber2.png', width: 150),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const HeaderText(header: 'Roll dice'),
        ),
      ],
    );
  }
}
