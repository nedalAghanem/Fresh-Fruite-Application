import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruits/screens/login_screen.dart';
import 'package:fresh_fruits/screens/onboarding_screen.dart';
import 'package:fresh_fruits/screens/signin_screen.dart';
import 'package:fresh_fruits/screens/splash_screen.dart';

void main() {
  runApp(const FreshFruiteApp());
}

class FreshFruiteApp extends StatelessWidget {
  const FreshFruiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/onboarding_screen': (context) => const OnboardingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/signin_screen': (context) => const SigninScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}