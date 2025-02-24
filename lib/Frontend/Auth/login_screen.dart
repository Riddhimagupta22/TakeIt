
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Auth/signup_screen.dart';

import '../Features/Widgets/custom image.dart';
import '../Features/bottom_navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: scrHeight * 0.2,
            left: scrWidth * 0.34,
            width: scrWidth * 0.7,
            height: scrHeight * 0.125,
            child: Image.asset('Assets/images/box with stickers (1).png',),
          ),
          Positioned(
            top: scrHeight * 0.128,
            right: scrWidth * 0.43,
            width: scrWidth * 0.7,
            height: scrHeight * 0.08,
            child:  Text('Login',textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                      letterSpacing: 1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                              ),
                            ),
                    ),
          Positioned(
            top: scrHeight * 0.183,
            right: scrWidth * 0.49,
            width: scrWidth * 0.7,
            height: scrHeight * 0.08,
            child:  Text('And',
              textAlign: TextAlign.center,
                            style: GoogleFonts.inter(

                                letterSpacing: 1,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFB300)
                            ),
          ),),
          Positioned(
            top: scrHeight * 0.176,
            right: scrWidth * 0.08,
            width: scrWidth * 0.7,
            height: scrHeight * 0.08,
            child:  Text('TakeIt',
                                style: GoogleFonts.inter(
                                            letterSpacing: 0,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 36,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF0071DC)
                                ),)
              ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomWidgets.CustomTextfield(text: 'Email', icon: Icons.email),
                const SizedBox(height: 15),
                CustomWidgets.CustomTextfield(text: 'Password', icon: Icons.lock_outline),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const BottomNavbar()); // Corrected navigation
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize:  Size(scrWidth*.5,scrHeight*.045),
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.black
                  ),
                  child: const Text("Log In", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 10),
                Text('or',textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Color(0xFF666666),
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, scrHeight*.045),
                  ),
                  child: const Text("Continue with Google"),
                ),
                const SizedBox(height: 150),
                GestureDetector(
                  onTap: () {
                    Get.to(SignUpScreen());
                  },
                  child:  RichText(text:
                  TextSpan(
                    text: 'Don’t have an account?',
                    style: GoogleFonts.inter(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.inter(
                            letterSpacing: 0,

                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFB300)
                        ),)
                    ],

                  )),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
