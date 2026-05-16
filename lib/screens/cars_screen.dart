import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../widgets/cars/car_card.dart';
import '../widgets/models/car_models.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // Botón de regreso a HomeScreen
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            // Si hay pantalla previa en el stack, regresa; si no, va a Home
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            }
          },
        ),
        title: const Text(
          "Available Cars",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: cars.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            return CarCard(car: cars[index]);
          },
        ),
      ),
    );
  }
}
