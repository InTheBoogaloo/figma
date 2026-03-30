import 'package:flutter/material.dart';

class Brand {
  final String name;
  final String logo;

  const Brand({
    required this.name,
    required this.logo,
  });
}

class BrandsGrid extends StatefulWidget {
  const BrandsGrid({super.key});

  @override
  State<BrandsGrid> createState() => _BrandsGridState();
}

class _BrandsGridState extends State<BrandsGrid> {
  int selectedIndex = 0;

  final List<Brand> brands = [
    const Brand(
      name: "Ferrari",
      logo:
          "https://i.pinimg.com/736x/41/d2/e5/41d2e5e80479f2185c9d1a9d2bf3c66e.jpg",
    ),
    const Brand(
      name: "Tesla",
      logo:
          "https://i.pinimg.com/736x/41/d2/e5/41d2e5e80479f2185c9d1a9d2bf3c66e.jpg",
    ),
    const Brand(
      name: "BMW",
      logo:
          "https://i.pinimg.com/736x/41/d2/e5/41d2e5e80479f2185c9d1a9d2bf3c66e.jpg",
    ),
    const Brand(
      name: "Audi",
      logo:
          "https://i.pinimg.com/736x/41/d2/e5/41d2e5e80479f2185c9d1a9d2bf3c66e.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: brands.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 1.3,
      ),
      itemBuilder: (context, index) {
        final isSelected = selectedIndex == index;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isSelected
                    ? const Color(0xFFD7F36A)
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: Center(
              child: Image.network(
                brands[index].logo,
                height: 45,

                /// loader bonito
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const CircularProgressIndicator(strokeWidth: 2);
                },

                /// fallback si falla
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.directions_car),
              ),
            ),
          ),
        );
      },
    );
  }
}
