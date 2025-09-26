
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String courseTitle;
  final String batchNumber;
  final String seatsLeft;
  final String daysLeft;

  const CourseCard({
    Key? key,
    required this.imagePath,
    required this.courseTitle,
    required this.batchNumber,
    required this.seatsLeft,
    required this.daysLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoRow(Icons.class_, batchNumber),
                      _buildInfoRow(Icons.event_seat_outlined, seatsLeft),
                      _buildInfoRow(Icons.add_alarm, daysLeft),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  Text(
                    courseTitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 55),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right_alt, color: Colors.black, size: 18),
                      label: const Text(
                        'বিস্তারিত দেখুন',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // style: TextButton.styleFrom(
                      // //   //padding: EdgeInsets.symmetric(horizontal: 2.0),
                      //    alignment: Alignment.center,
                      //  ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        const SizedBox(width: 4),
        Text(text, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}