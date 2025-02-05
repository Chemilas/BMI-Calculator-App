import 'package:bmier/res/colors.dart';
import 'package:bmier/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main(){

  // Initialization :
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Google Ads :
  MobileAds.instance.initialize();

  // Run App :
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMIer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: false
      ),
      home: const SplashScreen(),
    );
  }
}
