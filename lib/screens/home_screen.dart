
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../widgets/home/header_section.dart';
import '../widgets/home/search_section.dart';
import '../widgets/home/brand_section.dart';
import '../widgets/home/popular_cars_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 20),
                HeaderSection(),
                SizedBox(height: 25),
                SearchSection(),
                SizedBox(height: 25),
                BrandSection(),
                SizedBox(height: 25),
                PopularCarsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
