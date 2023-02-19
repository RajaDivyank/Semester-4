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
  // bool isLoaded = false;
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 10)).then((value) => setState(() {
  //     isLoaded = true;
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/splashScreenLogo.json'),
      backgroundColor: const Color.fromARGB(255, 12, 17, 19),
      nextScreen: LoginPage(),
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.decoratedBoxTransition,
      animationDuration: const Duration(seconds: 2),
    );
    // return SplashScreenView(
    //   navigateWhere: isLoaded,
    //   navigateRoute: LoginPage(), backgroundColor: Colors.white,
    //   linearGradient: const LinearGradient(
    //       colors: [
    //         Color(0xFF3366FF),
    //         Color(0xFF00CCFF),
    //       ],
    //       begin: FractionalOffset(0.0, 0.0),
    //       end: FractionalOffset(1.0, 0.0),
    //       stops: [0.0, 1.0],
    //       tileMode: TileMode.clamp),
    //   text: WavyAnimatedText(
    //     "Money Market Controller",
    //     textStyle: const TextStyle(
    //       color: Colors.black,
    //       fontSize: 32.0,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    //   imageSrc: "assets/images/appLogo.jpg",
    //   //  displayLoading: false,
    // );
  }
}