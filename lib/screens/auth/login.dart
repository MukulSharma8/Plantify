import 'package:flutter/material.dart';
import 'package:plantify/screens/auth/signup.dart';
import 'package:plantify/screens/mainScreens/home_screen.dart';

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
                        Text('Email'),
                        SizedBox( height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'you@plantify.co',
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
                            Text('Remember me'),
                            Spacer(),
                            Text('Forgot password?', style: TextStyle(color: Color(0xff2E7D32)),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        SizedBox(width: double.infinity, height: 50,
                          child: ElevatedButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
                          },
                              child: Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 20),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff2E7D32)
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('OR', textAlign: TextAlign.center,)
                          ],
                        ),
                        SizedBox(height: 15,),
                        SizedBox(width: double.infinity, height: 50,
                          child: ElevatedButton(onPressed: (){},
                            child: Text('Continue with google', style: TextStyle(color: Colors.black,  fontSize: 20),),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF3F8F2)
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('New here?  ', style: TextStyle(fontSize: 18),),
                            Text('Create account',style: TextStyle(fontSize: 18, color: Color(0xff2E7D32) ), )
                          ],
                        )
                      ],
                    )),
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
