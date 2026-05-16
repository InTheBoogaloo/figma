import 'package:flutter/material.dart';
import '../../screens/brands_screen.dart';

class BrandSection extends StatelessWidget {
  const BrandSection({super.key});

  @override
  Widget build(BuildContext context) {
    final brands = [
      {
        "name": "Tesla",
        "logo": "https://upload.wikimedia.org/wikipedia/commons/e/e8/Tesla_logo.png"
      },
      {
        "name": "Mercedes",
        "logo": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Logo.svg/500px-Mercedes-Logo.svg.png"
      },
      {
        "name": "Ferrari",
        "logo": "https://i.pinimg.com/736x/41/d2/e5/41d2e5e80479f2185c9d1a9d2bf3c66e.jpg"
      },
      {
        "name": "Bugatti",
        "logo": "https://cdn.freebiesupply.com/logos/large/2x/bugatti-3-logo-png-transparent.png"
      },
      {
        "name": "BMW",
        "logo": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/BMW.svg/3840px-BMW.svg.png"
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Trending Brands",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const BrandsScreen()),
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

        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: brands.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (_, index) {
              final brand = brands[index];
              return Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Image.network(brand["logo"]!, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    brand["name"]!,
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
