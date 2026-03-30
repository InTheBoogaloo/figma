class Car {
  final String name;
  final String brand;
  final String image;
  final double price;

  const Car({
    required this.name,
    required this.brand,
    required this.image,
    required this.price,
  });
}

final List<Car> cars = [
  const Car(
    name: "Model S",
    brand: "Tesla",
    image:
        "https://images.hgmsites.net/med/2016-mercedes-benz-slk-class-2-door-roadster-slk350-angular-front-exterior-view_100522444_m.jpg",
    price: 120,
  ),
  const Car(
    name: "C Class",
    brand: "Mercedes",
    image:
        "https://images.hgmsites.net/med/2016-mercedes-benz-slk-class-2-door-roadster-slk350-angular-front-exterior-view_100522444_m.jpg",
    price: 95,
  ),
  const Car(
    name: "Mustang",
    brand: "Ford",
    image:
        "https://images.hgmsites.net/med/2016-mercedes-benz-slk-class-2-door-roadster-slk350-angular-front-exterior-view_100522444_m.jpg",
    price: 110,
  ),
  const Car(
    name: "Civic",
    brand: "Honda",
    image:
        "https://images.hgmsites.net/med/2016-mercedes-benz-slk-class-2-door-roadster-slk350-angular-front-exterior-view_100522444_m.jpg",
    price: 80,
  ),
];
