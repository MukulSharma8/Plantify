import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              // padding: EdgeInsets.symmetric( horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 20),
                    child: HomeHeader(),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SearchBarWidget(),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HeroBanner(),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CategorySection(),
                  ),
                  SizedBox(height: 20,),
                  FeaturedSection(),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PopularSection(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: PlantCareBanner(),
                  ),
                ],
              ),
            ),
          ))
    );
  }
}

