// import 'package:ecommerce/pages/home_page.dart';
// import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/utils/routes_names.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//stateless widget >> SLL type st
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //state

  @override
  // build basically ui ka liya,UI refresh wagera build pa hota hain
  Widget build(BuildContext context) {
    // return ka upar variable wagera
    return MaterialApp(routes: {
      '/': (context) => const LoginPage(),
      MyRoutes.loginRoute: (context) => const LoginPage(),
      MyRoutes.homeRoute: (context) => const Homepage(),
    },
    debugShowCheckedModeBanner: false,
    
    
    );
  }
}
