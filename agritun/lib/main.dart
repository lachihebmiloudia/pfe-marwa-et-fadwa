import 'package:agritun/Auth/Signup.dart';
import 'package:flutter/material.dart';
import 'Auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const Login(),
        'signup': (context) => const Signup(),
      },
    );
  }
}
