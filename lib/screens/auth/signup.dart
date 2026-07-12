import 'package:flutter/material.dart';
import 'package:plantify/screens/auth/login.dart';
import 'package:plantify/screens/home/home_screen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
                  Text('Create account', style: TextStyle(fontSize: 32, color: Colors.white),),
                  Text('Start your green journey today.', style: TextStyle(fontSize: 15, color: Colors.white),),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Transform.translate(
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
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                    child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Full name'),
                            SizedBox( height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Ava Green',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade500
                                ),
                                prefixIcon: const Icon(
                                  Icons.person_2_outlined,
                                  color: Colors.green,
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF3F8F2),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Email'),
                            SizedBox( height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintText: 'you@leaf.co',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade500
                                ),
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: Colors.green,
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF3F8F2),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Password'),
                            SizedBox( height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade500
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF3F8F2),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text('By continuing you agree to our .', style: TextStyle(fontSize: 12),),
                                Text('Terms and Privacy Policy', style: TextStyle(fontSize:12,color: Color(0xff2E7D32)),)
                              ],
                            ),
                            SizedBox(height: 15,),
                            SizedBox(width: double.infinity, height: 50,
                              child: ElevatedButton(onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                              },
                                child: Text('Create account', style: TextStyle(color: Colors.white, fontSize: 20),),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff2E7D32)
                                ),
                              ),
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already a member? ', style: TextStyle(fontSize: 18),),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
                                  },
                                    child: Text('Sign in',style: TextStyle(fontSize: 18, color: Color(0xff2E7D32) ), ))
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
