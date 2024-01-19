// Custom class / widget
import 'package:flutter/material.dart';
import 'package:prject/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // è possibile creare dei constructor
  const GradientContainer.purple({super.key})
      : color1 = const Color.fromRGBO(30, 10, 80, 1),
        color2 = const Color.fromARGB(255, 88, 31, 233);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}

// statelessWidget deve essere usato solo nei casi in cui ho un input e un output, non c'è nessun dato che cambia internamente.
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }


/*
* Anonimous function ==> () {}

*/