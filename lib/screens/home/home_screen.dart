import 'package:flutter/material.dart';
import 'package:plantify/widgets/home_header.dart';
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
          child: Container(
            padding: EdgeInsets.symmetric( horizontal: 20),
            child: Column(
              children: [
                HomeHeader(),
                SizedBox(height: 20,),
                SearchBarWidget()
              ],
            ),
          ))
    );
  }
}

