import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant_data.dart';
import 'package:plantify/widgets/featured_card.dart';
import 'package:plantify/widgets/popular_card.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular now', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text('Browse', style: TextStyle(color: AppColors.primary),)
            ],
          ),
        ),
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.6,
        ),
            itemCount: featuredPlants.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return PopularCard(plant: featuredPlants[index]);
        },),
      ],
    );
  }
}
