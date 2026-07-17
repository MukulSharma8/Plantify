import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/services/api_service.dart';
import 'package:plantify/widgets/cart_item_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<List<Plant>>(
        future: futurePlants,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final plants = snapshot.data!;

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: plants.length > 3 ? 3 : plants.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CartItemCard(
                      plant: plants[index],
                      quantity: index + 1,
                      price: 48.0 + (index * 8),
                      onIncrease: () {},
                      onDecrease: () {},
                      onDelete: () {},
                    ),
                  );
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Promo code',
                  prefixIcon: const Icon(Icons.local_offer_outlined),
                  suffixText: 'Apply',
                  filled: true,
                  fillColor: AppColors.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Subtotal',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          '\$185.00',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: const [
                        Text(
                          'Shipping',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          'Free',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Divider(),

                    const SizedBox(height: 12),

                    Row(
                      children: const [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$185.00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}