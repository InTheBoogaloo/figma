import 'package:flutter/material.dart';
class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Descriptions",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor "
          "do amet sint. Velit officia consequat duis enim velit mollit.",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
