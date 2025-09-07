import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   final TextEditingController controller;
    final String  hintText;
    final bool obscureText;
    final String? Function(String?)? validator;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obscureText,
    this.validator, 
    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: TextFormField(
        controller: controller,
        obscureText:obscureText,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.white70),
           ),  
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
           ),
          fillColor: Colors.grey[500],
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
