import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Auth/login_screen.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
import '../Features/bottom_navbar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:scrHeight*.12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start, // Ensuring alignment
                        children: [
                          Text(
                            "Create",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              letterSpacing: 1,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Your",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              letterSpacing: 1,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),Text(
                            "Account",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              letterSpacing: 1,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          RichText(text:
                          TextSpan(
                            text: 'And',
                            style: GoogleFonts.inter(
                              letterSpacing: 1,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                                color: Color(0xFFFFB300)
                            ),
                            children: [
                              TextSpan(
                              text: 'TakeIt',
                              style: GoogleFonts.inter(
                                  letterSpacing: 0,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF0071DC)
                              ),)
                            ],
        
                          )),
        
                        ],
                      ),
                      Image.asset("Assets/images/drone with parcel (1).png",
                      height: scrHeight*.15,), // Corrected usage
                    ],
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: CustomWidgets.CustomTextfield(text: 'Username', icon: Icons.perm_identity_sharp)
                ),
                const SizedBox(height: 15),
                CustomWidgets.CustomTextfield(text: 'Email', icon: Icons.email),
                const SizedBox(height: 15),
                CustomWidgets.CustomTextfield(text: 'Password', icon: Icons.lock_outline),
                const SizedBox(height: 15),
                CustomWidgets.CustomTextfield(text: 'Confirm Password', icon: Icons.lock_outline),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("I agree to the Terms & Conditions"),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const BottomNavbar()); // Corrected navigation
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:  Size(scrWidth*.5,scrHeight*.045),
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black
                  ),
                  child: const Text("Sign Up", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 4),
                Text('or',textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Color(0xFF666666),
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, scrHeight*.045),
                  ),
                  child: const Text("Continue with Google"),
                ),
                const SizedBox(height:  30),
                GestureDetector(
                  onTap: () {
                   Get.to(LoginScreen());
                  },
                  child:  RichText(text:
                  TextSpan(
                    text: 'Already have an account?',
                    style: GoogleFonts.inter(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: 'LogIn',
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
        ),
      ),
    );
  }
}
