import 'package:flutter/material.dart';

import '../widgets/car_detail/header_car_detail.dart';
import '../widgets/car_detail/car_img_car_detail.dart';
import '../widgets/car_detail/specs_cards_car_detail.dart';
import '../widgets/car_detail/description_car_description.dart';
import '../widgets/car_detail/features_car_detail.dart';
import '../widgets/car_detail/botton_booking_car_car_detail.dart';


class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        CarImageSection(),
                        const SizedBox(height: 25),
                        SpecsSection(),
                        const SizedBox(height: 25),
                        DescriptionSection(),
                        const SizedBox(height: 20),
                        FeaturesSection(),
                        const SizedBox(height: 100),
                      ],
                  ),
                ),
              ),
            ),
            const BottomBookingBar(),
          ],
        ),
      ),
    );
  }
}
