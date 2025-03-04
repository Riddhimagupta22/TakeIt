import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Frontend/Features/splash_screen.dart';
import 'firebase_options.dart';
import 'package:http/http.dart' as http;



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0071DC),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0071DC)),
        useMaterial3: true,
      ),
      home: const SplashScreen (),
    );
  }
}