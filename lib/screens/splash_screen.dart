import 'dart:async';
import 'auth/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    });
  }
  Widget build(BuildContext context) {
    Widget indicator(bool active) {
      return Container(
        width: active ? 18 : 8,
        height: 8,
        decoration: BoxDecoration(
          color: active ? Colors.white : Colors.white54,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2E7D32), Color(0xff1B5E20)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 2
                  )
                ),
                child: Image.asset('assets/images/icons/leaf.png',
                height: 80,
                width: 80,),
              ),
              SizedBox(
                height: 15,
              ),
              Text('PlantiFy', style: TextStyle( fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 2, color: Colors.white)),
              Text('Bring Nature Home.', style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  indicator(true),
                  const SizedBox(width: 8),
                  indicator(false),
                  const SizedBox(width: 8),
                  indicator(false),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
