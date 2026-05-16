import 'package:flutter/material.dart';
import '../../screens/cars_screen.dart';
import '../models/car_models.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Imagen
          Expanded(
            child: Image.asset(
              car.image,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 10),

          /// Nombre
          Text(
            car.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          Text(
            car.brand,
            style: const TextStyle(color: Colors.grey),
          ),

          const Spacer(),

          /// Precio
          Text(
            "\$${car.price}/day",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
