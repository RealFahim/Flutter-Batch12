import 'package:flutter/material.dart';
import 'package:login_ui/Component/my_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 50),

              Icon(Icons.lock, size: 100),

              SizedBox(height: 50),

              Text(
                "Welcome Back you\"ve been missed",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

            SizedBox(height: 50),
            //User name text field
            MyTextField(),
             SizedBox(height: 10),
            //password textfield
            MyTextField(),

          

            ],
          ),
        ),
      ),
    );
  }
}
