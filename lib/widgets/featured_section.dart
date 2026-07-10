import 'package:flutter/material.dart';
import 'package:plantify/models/plant_data.dart';
import 'package:plantify/widgets/featured_card.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
