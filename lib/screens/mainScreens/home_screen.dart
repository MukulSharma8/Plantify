import 'package:flutter/material.dart';
import 'package:plantify/models/plant.dart';
import 'package:plantify/services/api_service.dart';
import 'package:plantify/widgets/category_section.dart';
import 'package:plantify/widgets/featured_section.dart';
import 'package:plantify/widgets/hero_banner.dart';
import 'package:plantify/widgets/home_header.dart';
import 'package:plantify/widgets/plant_care_banner.dart';
import 'package:plantify/widgets/popular_section.dart';
import 'package:plantify/widgets/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Plant>> futurePlants;

  @override
  void initState() {
    super.initState();
    futurePlants = PlantService().getPlants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<Plant>>(
          future: futurePlants,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }

            final plants = snapshot.data ?? [];

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: HomeHeader(),
                    ),

                    const SizedBox(height: 20),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: SearchBarWidget(),
                    ),

                    const SizedBox(height: 20),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: HeroBanner(),
                    ),

                    const SizedBox(height: 30),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: CategorySection(),
                    ),

                    const SizedBox(height: 20),

                    FeaturedSection(
                      plants: plants,
                    ),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PopularSection(
                        plants: plants,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                        left: 20,
                        right: 20,
                        bottom: 70,
                      ),
                      child: PlantCareBanner(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}