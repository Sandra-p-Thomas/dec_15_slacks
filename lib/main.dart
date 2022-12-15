import 'package:flutter/material.dart';
import 'package:slacks_test/log_in/login.dart';
import 'package:slacks_test/log_in/register.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/new_bar.dart';
import 'package:slacks_test/splash_screen/splash_screen.dart';
import 'package:slacks_test/test/test.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  //   home: Banner1(),
     // home: Barnew(),  //too add splash screen
 // home: Log_in(),
//home: Navbar(),
   // home: MyLoginPage(),
   home: MyHomePage(),

    );
  }
}
