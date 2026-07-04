import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            Color(0xff2E7D32),
            Color(0xff1B5E20),
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Plant of the Week",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Monstera Deliciosa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Shop Now"),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.eco,
            color: Colors.white,
            size: 90,
          ),
        ],
      ),
    );
  }
}