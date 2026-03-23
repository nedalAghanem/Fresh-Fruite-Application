import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 130), // المسافة من الأعلى
            // الصورة
            Center(
              child: Image.asset(
                'assets/images/img_onboarding.png', // ضع الصورة بهذا الاسم
                width: 303,
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 130),
            // النص الرئيسي
            const Text(
              'Fast and responsibly delivery by our courier',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            // النص الثانوي
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const Spacer(), // يدفع الأزرار للأسفل
            // زر CREATE AN ACCOUNT
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/signin_screen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFEC54B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'CREATE AN ACCOUNT',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            // زر LOGIN
            SizedBox(
              width: double.infinity,
              height: 60,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFFEC54B)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFEC54B),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}