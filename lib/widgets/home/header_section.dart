import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 18),
                SizedBox(width: 5),
                Text(
                  "Ahmedabad, INDIA",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Hello Johnson 👋",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Let's find your favourite car here",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(
            "https://i.pravatar.cc/150?img=3",
          ),
        )
      ],
    );
  }
}
