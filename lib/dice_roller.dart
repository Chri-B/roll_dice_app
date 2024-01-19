import 'package:flutter/material.dart';
import 'package:prject/styled_text.dart';

import 'dart:math';

final randomizer = Random();

// solitamente negli statefulwidget si imposta una class e una _class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


// _ iniziale significa che la classe è private (visibile solo in questo file)
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      // funzione che permette di rivalutare tutta la parte di codice build() qui sotto
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(ctx) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // modalità di centrare verticalmente il contenuto di una colonna
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png", //possibile costruire stringhe con variabili tramite questa sintassi
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
          ),
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
