import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xffF4F8F2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            size: 32,
            color: const Color(0xff2E7D32),
          ),
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }
}