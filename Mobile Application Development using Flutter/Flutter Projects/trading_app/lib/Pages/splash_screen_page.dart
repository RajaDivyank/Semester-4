import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';
import 'package:trading_app/Pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/splashScreenLogo.json'),
      backgroundColor: const Color.fromARGB(255, 12, 17, 19),
      nextScreen: const LoginPage(),
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.decoratedBoxTransition,
      animationDuration: const Duration(seconds: 2),
    );
  }
}