import 'package:flutter/material.dart';

import '../widgets/brands/brands_grid.dart';
import '../widgets/brands/title_section.dart';




class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  int selectedIndex = 1;

  final List<Map<String, String>> brands = [
    {"name": "Tesla", "logo": "assets/brands/tesla.png"},
    {"name": "Mercedes", "logo": "assets/brands/mercedes.png"},
    {"name": "Ferrari", "logo": "assets/brands/ferrari.png"},
    {"name": "BMW", "logo": "assets/brands/bmw.png"},
    {"name": "Audi", "logo": "assets/brands/audi.png"},
    {"name": "Porsche", "logo": "assets/brands/porsche.png"},
    {"name": "Lamborghini", "logo": "assets/brands/lamborghini.png"},
    {"name": "Bugatti", "logo": "assets/brands/bugatti.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6F8),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFD7F36A),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Skip",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleSection(),
            SizedBox(height: 20),
            Expanded(child: BrandsGrid()),
          ],
        ),
      ),
    );
  }
}
