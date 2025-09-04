import 'package:flutter/material.dart';
import 'package:login_ui/Component/my_textfield.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text("Login Page Validation")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),

              Icon(Icons.lock, size: 90),
               SizedBox(height: 70),
              Text(
                "Welcome Back you\"ve been missed",
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),

              SizedBox(height: 20),

                MyTextField(
                  controller: emailcontroller,
                  hintText: 'আপনার Email লিখুন',
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'অনুগ্রহ করে ইমেল লিখুন';
                    }
                    return null;
                  },
                
                ),
                SizedBox(height: 5),
                MyTextField(
                  controller: passwordController,
                  hintText: 'আপনার Password লিখুন',
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'অনুগ্রহ করে পাসওয়ার্ড লিখুন';
                    }
                    if (value.length < 6) {
                      return 'পাসওয়ার্ডটি কমপক্ষে ৬ অক্ষরের হতে হবে';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                     // এখানে ভ্যালিডেশন চালু করা হচ্ছে
                    if (_formKey.currentState!.validate()) {
                    // যদি ভ্যালিডেশন সফল হয়, তবে এখানে লগইন লজিক লিখুন।
                    print('ইমেইল: ${emailcontroller.text}');
                  print('পাসওয়ার্ড: ${passwordController.text}');
                }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:login_ui/Component/my_textfield.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [

//               SizedBox(height: 50),

//               Icon(Icons.lock, size: 90),

//               SizedBox(height: 70),

//               Text(
//                 "Welcome Back you\"ve been missed",
//                 style: TextStyle(color: Colors.grey[600], fontSize: 16),
//               ),

//               SizedBox(height: 20),

//               //User name text field
//               MyTextField(
//                 controller: usernameController,
//                 hintText: "Username",
//                 obscureText: false,
//               ),

//               SizedBox(height: 5),

//               //password textfield
//               MyTextField(
//                 controller: passwordController,
//                 hintText: "Password",
//                 obscureText: true,
//               ),

//               SizedBox(height: 10),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   mainAxisAlignment:MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       "Forgot Password",
//                       style: TextStyle(color: Colors.grey[700]),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 10),

//               ElevatedButton(
//               style: ElevatedButton.styleFrom(
                
//               ),
//                 onPressed: () {
//                   print("Username: ${usernameController.text}");
//                   print("Password: ${passwordController.text}");
//                 },
//                 child: Text("Login"),
//               ),

              


//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
