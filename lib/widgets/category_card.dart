import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';

class CategoryCard extends StatefulWidget {
  final IconData icon;
  final String title;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        GestureDetector(
          onTapDown: (_){
            setState(() {
              isTap = !isTap;
            });
          },
          onTapUp: (_){
            setState(() {
              isTap = !isTap;
            });
          },
          onTapCancel: (){
            setState(() {
              isTap = !isTap;
            });
          },


          child: Container(
            height: width*0.19,
            width: width*0.19,
            decoration: BoxDecoration(
              color: isTap ? AppColors.primary : AppColors.surface,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Icon(
              widget.icon,
              size: 30,
              color: isTap ? Colors.white : Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}