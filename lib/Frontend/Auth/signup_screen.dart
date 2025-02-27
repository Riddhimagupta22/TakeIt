import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Auth/login_screen.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
import '../../Backend/Service/Auth Service/auth_service.dart';
import '../Features/bottom_navbar.dart';
import '../Screens/Home Page/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
   SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
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
                padding:  EdgeInsets.only(left: scrWidth * 0.1,right: scrWidth * 0.1,top: 50.0),
                child: Form(key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       CustomWidgets.CustomTextfield(text: 'Username', icon: Icons.perm_identity_sharp,controller: null, label: 'Enter Name'),
                      SizedBox(height: scrHeight * 0.01,),
                      CustomWidgets.CustomTextfield(text: 'Email', icon: Icons.email, controller:emailController, label: 'Enter Email',),
                      SizedBox(height: scrHeight * 0.01,),
                      CustomWidgets.CustomTextfield(text: 'Password', icon: Icons.lock_outline, controller:passwordController,label: 'Enter valid password'),
                      SizedBox(height: scrHeight * 0.01,),
                      CustomWidgets.CustomTextfield(text: 'Confirm Password', icon: Icons.lock_outline,controller: null, label: 'Enter Same password'),
                      SizedBox(height: scrHeight * 0.01),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text("I agree to the Terms & Conditions"),
                        ],
                      ),

                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            AuthService()
                                .AccountwithEmail(
                                emailController.text,
                                passwordController.text)
                                .then((value) {
                              if (value == 'Account Created') {
                                Get.snackbar('', 'Account Created');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BottomNavbar()));
                              } else {
                                Get.snackbar("Error", value);
                              }
                            });
                          }// Corrected navigation
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize:  Size(scrWidth*.5,scrHeight*.045),
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.black
                        ),
                        child: const Text("Sign Up", style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(height: scrHeight * 0.01),
                      Text('or',textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Color(0xFF666666),
                          letterSpacing: 1,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                       SizedBox(height: scrHeight * 0.01),
                      OutlinedButton(
                        onPressed: () { AuthService()
                            .signUpwithGoogle()
                            .then((user) {
                          if (user != null) {
                            Get.snackbar("",
                                'Signed in as ${user.displayName}');
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNavbar()));
                          } else {
                            Get.snackbar('Error', 'Sign In failed');
                          }
                        });
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, scrHeight*.045),
                        ),
                        child: Text("Continue with Google",style: GoogleFonts.poppins(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),),
                      SizedBox(height:  scrHeight * 0.035),
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
            ],
          ),
        ),
      ),
    );
  }
}
