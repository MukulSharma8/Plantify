import 'package:flutter/material.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/services/api_service.dart';
import 'package:plantify/widgets/wishlist_card.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  late Future<List<Plant>> futurePlants;

  @override
  void initState() {
    super.initState();
    futurePlants = PlantService().getPlants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wishlist",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Center(
              child: Text(
                "4 Items",
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<List<Plant>>(
        future: futurePlants,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          final plants = snapshot.data!;

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: plants.length > 4 ? 4 : plants.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: .58,
            ),
            itemBuilder: (context, index) {
              return WishlistCard(
                plant: plants[index],
                price: 48 + index * 15,
              );
            },
          );
        },
      ),
    );
  }
}