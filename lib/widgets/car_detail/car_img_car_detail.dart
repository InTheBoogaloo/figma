import 'package:flutter/material.dart';
class CarImageSection extends StatelessWidget {
  const CarImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.network(
          "https://images.hgmsites.net/med/2016-mercedes-benz-slk-class-2-door-roadster-slk350-angular-front-exterior-view_100522444_m.jpg",
          height: 200,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Color(0xFFB6F24A),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite_border),
          ),
        )
      ],
    );
  }
}
