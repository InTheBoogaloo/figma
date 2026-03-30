import 'package:flutter/material.dart';

class SpecsSection extends StatelessWidget {
  const SpecsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SpecCard(icon: Icons.speed, title: "Engine", value: "1600 hp"),
        SpecCard(icon: Icons.settings, title: "Transmission", value: "Automatic"),
        SpecCard(icon: Icons.local_gas_station, title: "Fuel Type", value: "Petrol"),
      ],
    );
  }
}

class SpecCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const SpecCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
