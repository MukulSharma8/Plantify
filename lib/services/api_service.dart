import '../models/plant.dart';

class ApiService {
  static List<Plant> featuredPlants = [
    Plant(
      name: "Monstera",
      category: "Indoor",
      price: 48,
      rating: 4.8,
      image: "assets/images/plants/monstera.png",
    ),
    Plant(
      name: "Snake Plant",
      category: "Indoor",
      price: 35,
      rating: 4.9,
      image: "assets/images/plants/snake.png",
    ),
  ];

  static List<Plant> popularPlants = [
    // ...
  ];
}