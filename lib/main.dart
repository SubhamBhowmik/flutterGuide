import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless widget >> SLL type st
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //state

  @override
  // build basically ui ka liya,UI refresh wagera build pa hota hain
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
      },
    );
  }
}
