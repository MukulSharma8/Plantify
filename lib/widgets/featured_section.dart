import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant_data.dart';
import 'package:plantify/widgets/featured_card.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

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
              featuredPlants.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child:FeaturedCard(
                  plant: featuredPlants[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
