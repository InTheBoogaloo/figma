import 'package:car_renta/widgets/brands/title_section.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/car_details_screen.dart';
import 'screens/cars_screen.dart';
import 'screens/brands_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarsScreen(),
    );
  }
}
