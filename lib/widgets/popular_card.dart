import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/models/plant.dart';

class PopularCard extends StatelessWidget {
  final Plant plant;

  const PopularCard({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.black12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                plant.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          const SizedBox(height: 12),

          Text(
            plant.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),

          const SizedBox(height: 4),

          /// Plant Name
          Text(
            plant.category,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 2),

          /// Rating
          Row(
            children: const [
              Icon(
                Icons.star_rounded,
                color: Colors.amber,
                size: 16,
              ),
              SizedBox(width: 4),
              Text(
                "4.8",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),

          const Spacer(),

          /// Price + Add Button
          Row(
            children: [
              Text(
                "\$${plant.price}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              Container(
                height: 38,
                width: 38,
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