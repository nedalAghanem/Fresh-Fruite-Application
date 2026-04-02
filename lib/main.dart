import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruits/screens/main_screen.dart';
import 'package:fresh_fruits/screens/signin_screen.dart';
import 'package:fresh_fruits/screens/onboarding_screen.dart';
import 'package:fresh_fruits/screens/create_account_screen.dart';
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
        '/sign_in_screen': (context) => const SignInScreen(),
        '/create_account_screen': (context) => const CreateAccountScreen(),
        '/main_screen': (context) => const MainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}