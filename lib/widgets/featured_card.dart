import 'package:flutter/material.dart';
import 'package:plantify/constants/app_assets.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant.dart';
class FeaturedCard extends StatelessWidget {
  final Plant plant;
  const FeaturedCard({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final cardWidth = size.width * 0.5;
    final cardHeight = size.height * 0.34;

    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 12 ,
            child: Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      plant.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          /// CATEGORY
          Text(
            plant.category,
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey.shade600,
              letterSpacing: 1,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 4),
          Text(
            plant.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          /// PRICE + BUTTON
          Row(
            children: [
              Text(
                "\$${plant.price}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}