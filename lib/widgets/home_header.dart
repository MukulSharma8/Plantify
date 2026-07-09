import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good morning', style: TextStyle(color: Colors.black26),),
                  Text('Hello, Mukul', style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.surface
                ),
                child: Icon(Icons.favorite_border, size: 20,),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.primary
                ),
                child: Icon(Icons.shopping_bag_outlined, size: 20,color: Colors.white,),
              ),
            ],
          ),

        ],
      );
  }
}
