import 'package:flutter/material.dart';
import 'package:prject/gradient_container.dart';
// "const" => store value in device memory, improving performance

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: GradientContainer.purple(),
      ),
    ),
  );
}
// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.lightBlueAccent,
//         body: GradientContainer(
//           Color.fromRGBO(30, 10, 80, 1),
//           Color.fromARGB(255, 88, 31, 233),
//         ),
//       ),
//     ),
//   );
// }
