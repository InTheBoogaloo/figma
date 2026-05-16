import 'package:flutter/material.dart';
import '../../screens/cars_screen.dart';
import 'car_card.dart';

class PopularCarsSection extends StatelessWidget {
  const PopularCarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Popular Cars",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CarsScreen()),
                );
              },
              child: const Text(
                "View All",
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const CarCard(),
      ],
    );
  }
}
