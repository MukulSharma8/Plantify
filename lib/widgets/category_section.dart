import 'package:flutter/material.dart';
import 'package:plantify/widgets/category_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCard(
              icon: Icons.eco,
              title: 'Indoor',
            ),
            CategoryCard(
              icon: Icons.wb_sunny_outlined,
              title: 'Outdoor',
            ),
            CategoryCard(
              icon: Icons.local_florist_outlined,
              title: 'Succulents',
            ),
            CategoryCard(
              icon: Icons.grid_view_outlined,
              title: 'Pots',
            ),
          ],
        ),
      ],
    );
  }
}
