import 'package:ecommerce/home_page.dart';
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
    //states or variable widget ka nicha
    // int days = 30;
    // double ti = 3.2;
    // num hi = 300.00;
    // var jo = "sxhjs"; //int and double kisi bhi type ka ho skta hain
    // const pi = 3.14; //cannot changed
    // final ji = 1; //we can modify the final variables
    return const MaterialApp(home: homepage());
  }
}
