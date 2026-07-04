import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xffF4F8F2),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Icon(
                Icons.eco,
                size: 80,
                color: Color(0xff2E7D32),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Monstera",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Indoor Plant",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "\$48",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 18,
                backgroundColor: const Color(0xff2E7D32),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}