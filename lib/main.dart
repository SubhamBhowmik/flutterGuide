import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless widget >> SLL
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //state

  @override
  // build basically ui ka liya,UI refresh wagera build pa hota hain
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(child: Text("hiiii")),
      ),
    );
  }
}
