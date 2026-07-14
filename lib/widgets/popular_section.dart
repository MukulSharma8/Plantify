import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/widgets/popular_card.dart';

class PopularSection extends StatelessWidget {
  final List<Plant> plants;

  const PopularSection({
    super.key,
    required this.plants,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Now',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Browse',
                style: TextStyle(color: AppColors.primary),
              ),
            ],
          ),
        ),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.55,
          ),
          itemBuilder: (context, index) {
            return PopularCard(
              plant: plants[index],
            );
          },
        ),
      ],
    );
  }
}