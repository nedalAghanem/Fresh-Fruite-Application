import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/onboarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEC54B),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/img_splash.svg',
          width: 226,
          height: 276,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}