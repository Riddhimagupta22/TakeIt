import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
import '../Auth/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF3A91F3),
      body: Stack(
        children: [
          Positioned(
            top: -1,
            left: scrWidth * 0.04,
            width: scrWidth * 0.7,
            height: scrHeight * 0.08,
            child: Image.asset('Assets/images/box with stickers.png',),
          ),
          Positioned(
            top: scrHeight * 0.08,
            left: scrWidth * 0.81,
            width: scrHeight * 0.089,
            height: scrHeight * 0.056,
            child: Image.asset('Assets/images/Rectangle 18.png'),
          ),

          Positioned(
            top: scrWidth * 0.2,
            left: -scrHeight * 0.1,
            width: scrWidth * 0.6,
            height: scrHeight * 0.07,
            child: Image.asset('Assets/images/isometric view of notebook with stickers notes and pencils.png'),
          ),
          Positioned(
            top: scrWidth * 0.395,
            left: scrWidth * 0.02,
            width: scrWidth * 0.6,
            height: scrHeight * 0.07,
            child: Image.asset('Assets/images/pink basket with products.png'),
          ),
          Positioned(
            top: scrWidth * 0.8,
            left: - scrWidth * .247,
            width: scrWidth * 0.6,
            height: scrHeight * 0.07,
            child: Image.asset('Assets/images/headphones with stickers and charm.png'),
          ),
          Positioned(
            top: scrWidth * 1.25,
            left: - scrWidth * .275,
            width: scrWidth * 0.6,
            height: scrHeight * 0.07,
            child: Image.asset('Assets/images/apple with stickers.png'),
          ),
          Positioned(
              top: scrHeight * 0.096,
              left: scrWidth * 0.86,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,children: [
              Center(child: Icon(Icons.arrow_drop_down,color: Colors.black, size:15)),
              Center(
                child: Text("Language",style: GoogleFonts.poppins(
                  color:  Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: scrWidth * 0.018,
                ),),
              )
            ],)
          ),

          Padding(
            padding:  EdgeInsets.only(top: scrHeight*.42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag:'takeit',
                  child: Text(
                    "TakeIt",
                    style: GoogleFonts.inter(
                      fontStyle: FontStyle.italic,
                      color: const Color(0xFFFFB300),
                      fontWeight: FontWeight.w800,
                      fontSize: scrWidth * 0.15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Image.asset("Assets/images/suitcase with stickers.png",
                  height: scrHeight*.09,),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: scrHeight*.05,right: scrWidth*.08,bottom: 10),
            child: Center(
              child: Text(
                "Shop Smarter, Live Better",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: scrHeight*.7),
            child: Center(
              child: Text(
                "Quality, affordability, and convenience\nin every click.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: scrHeight*.85,left:scrWidth*.08,right:scrWidth*.08 ),
            child: Center(
              child: SizedBox(
                height: scrHeight*.062,
                width: scrWidth*.775,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SignUpScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color(0xFFFFB300),
                    foregroundColor: Colors.black,
                    elevation: 10,
                    shadowColor: Colors.black,
                  ),
                  child: Text(
                    "GET STARTED",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
