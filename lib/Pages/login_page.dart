import 'package:flutter/material.dart';
import 'package:login_ui/Component/my_textfield.dart';
import 'homepage.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: const Text("Login Page Validation")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Icon(Icons.lock, size: 90),
                  const SizedBox(height: 70),
                  Text(
                    "Welcome Back you've been missed",
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: emailcontroller,
                    hintText: 'Enter your Email', // Bengali text changed
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email'; // Bengali text changed
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 5),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Enter your Password', // Bengali text changed
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password'; // Bengali text changed
                      }
                      if (value.length < 3) {
                        return 'Password must be at least 3 characters long'; // Bengali text changed
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
