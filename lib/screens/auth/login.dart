import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xff2E7D32), Color(0xff1B5E20)], begin: AlignmentGeometry.topLeft, end: Alignment.bottomRight)
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('assets/images/icons/leaf.png', height: 40, width: 40,),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 1
                      )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Welcome Back', style: TextStyle(fontSize: 40, color: Colors.white),),
                  Text('Sign in to continue growing.', style: TextStyle(fontSize: 20, color: Colors.white),),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -50),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                padding: EdgeInsetsGeometry.symmetric(vertical: 50, horizontal: 20),
                child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Emailll'),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'you@plantify.co'
                      ),
                    )
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
