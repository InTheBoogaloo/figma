import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Which brand of car\nyou prefer ?",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Log in to your account using email or social networks",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
