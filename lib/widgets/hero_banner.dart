import 'package:flutter/material.dart';
import 'package:plantify/constants/app_assets.dart';
import 'package:plantify/constants/app_color.dart';
import 'dart:ui';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Container(
      width: width,
      height: height * 0.53,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.monstera, fit: BoxFit.cover),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AppAssets.leafIcon, height: 20, width: 20),
                  Text(
                    'New Arrival',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Positioned(

            bottom: 20,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.5),
                    border: Border.all(color: Colors.white.withOpacity(0.6)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PLANT OF THE WEEK',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: AppColors.primary,
                        ),
                      ),
                      Text('Monstera\nDeliciiosa', style: TextStyle(fontSize: 22, height: 1.2, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text('From'),
                      Text('\$48.00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
              right: 40,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary
                  ),
                  child: Text('Shop now', style: TextStyle(color: Colors.white),)) )
        ],
      ),
    );
  }
}
