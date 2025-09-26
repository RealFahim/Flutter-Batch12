// lib/main.dart
import 'package:flutter/material.dart';

import 'card.dart';
 void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.grey[100],
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: const EdgeInsets.all(10),
          childAspectRatio: 0.73,
          children: const [
            CourseCard(
              imagePath: 'assets/images/java.jpg',
              courseTitle: 'Full Stack Web Development with JavaScript (MERN)',
              batchNumber: 'ব্যাচ ১৩',
              seatsLeft: '৪ সিট বাকি',
              daysLeft: '৭ দিন বাকি',
            ),
            CourseCard(
              imagePath: 'assets/images/python.jpg',
              courseTitle: 'Full Stack Web Development with Python, Django & React',
              batchNumber: 'ব্যাচ ৮',
              seatsLeft: '৯৫ সিট বাকি',
              daysLeft: '৩৫ দিন বাকি',
            ),
            CourseCard(
              imagePath: 'assets/images/SQA.jpg',
              courseTitle: 'SQA: Manual & Automated Testing',
              batchNumber: 'ব্যাচ ৯',
              seatsLeft: '৪১ সিট বাকি',
              daysLeft: '৯ দিন বাকি',
            ),
            CourseCard(
              imagePath: 'assets/images/WEB.jpg',
              courseTitle: 'Full Stack Web Development with ASP.Net Core',
              batchNumber: 'ব্যাচ ১৫',
              seatsLeft: '৫ সিট বাকি',
              daysLeft: '৮ দিন বাকি',
            ),
          ],
        ),
      ),
    );
  }
}