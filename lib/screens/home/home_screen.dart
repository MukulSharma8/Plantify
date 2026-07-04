import 'package:flutter/material.dart';
import '../../widgets/search_bar_widget.dart';
import '../../widgets/hero_banner.dart';
import '../../widgets/category_card.dart';
import '../../widgets/plant_card.dart';
import '../../widgets/plant_care_banner.dart';
import '../../widgets/custom_bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: const CustomBottomNav(),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),

              //---------------- HEADER ----------------//

              Row(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Text(
                        "Good Morning",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 6),

                      Text(
                        "Hello, Ava 🌿",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),

                  const Spacer(),

                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xffF4F8F2),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(width: 12),

                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xffF4F8F2),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 25),

              const SearchBarWidget(),

              const SizedBox(height: 30),

              const HeroBanner(),

              const SizedBox(height: 30),

              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  CategoryCard(
                    icon: Icons.local_florist,
                    title: "Indoor",
                  ),

                  CategoryCard(
                    icon: Icons.park,
                    title: "Outdoor",
                  ),

                  CategoryCard(
                    icon: Icons.eco,
                    title: "Succulent",
                  ),

                  CategoryCard(
                    icon: Icons.grass,
                    title: "Pots",
                  ),

                ],
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [

                  Text(
                    "Featured Plants",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 260,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: const [

                    PlantCard(),

                    SizedBox(width: 18),

                    PlantCard(),

                  ],
                ),
              ),

              const SizedBox(height: 30),

              const PlantCareBanner(),

              const SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}