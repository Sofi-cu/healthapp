import 'package:flutter/material.dart';
import 'package:healthapp/login.dart';

void main() {
  runApp(Healthapp());
}

class Healthapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Set the login/signup page as the home page
    );
  }
}