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
    //required this.controller
    
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


// class MyTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final bool obscureText;
//    MyTextField({
//      super.key,
//      required this.controller,
//      required this.hintText,
//      required this.obscureText,
//    });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 25.0),
//       child: TextField(
//         controller: controller,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.white70),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.black),
//           ),
//           fillColor: Colors.grey[500],
//           filled: true,
//           hintText: hintText,
//           hintStyle: TextStyle(color: Colors.grey[600]),
//         ),
//       ),
//     );
//   }
// }