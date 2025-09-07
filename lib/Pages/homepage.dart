import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        ),
        backgroundColor:Colors.blueGrey,
      ),
      body: Center(
        child:
         Text(
          "Welcome! You have successfully logged in.",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
    );
  }
}