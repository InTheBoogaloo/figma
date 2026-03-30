import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
            "https://images.hgmsites.net/med/2016-mercedes-benz-slk-class-2-door-roadster-slk350-angular-front-exterior-view_100522444_m.jpg",
            height: 140,
            fit: BoxFit.contain,
          ),
        ),
          
          const SizedBox(height: 10),
          const Text(
            "Mercedes SLK Class",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          const Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 18),
              SizedBox(width: 4),
              Text("5.0"),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.lock_outline),
              Icon(Icons.favorite_border),
              Icon(Icons.chat_bubble_outline),
              Text(
                "\$8",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
