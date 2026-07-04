import 'package:flutter/material.dart';

class PlantCareBanner extends StatelessWidget {
  const PlantCareBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffE8F5E9),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Plant Care Tips",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Learn how to keep your plants healthy.",
                ),
              ],
            ),
          ),
          Icon(
            Icons.spa,
            color: Color(0xff2E7D32),
            size: 60,
          ),
        ],
      ),
    );
  }
}