import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/widgets/featured_card.dart';

class FeaturedSection extends StatelessWidget {
  final List<Plant> plants;

  const FeaturedSection({
    super.key,
    required this.plants,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Featured', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text('View more', style: TextStyle(color: AppColors.primary),)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              10,
                  (index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child:FeaturedCard(
                  plant: plants[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
