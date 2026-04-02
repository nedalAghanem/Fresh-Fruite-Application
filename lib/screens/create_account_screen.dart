import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // النصف العلوي: صورة
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/signin_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // زر الرجوع
                Positioned(
                  top: 50,
                  left: 20,
                  child: IconButton(
                    onPressed: () => Navigator.pushReplacementNamed(context,'/onboarding_screen'),
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
          // الجزء السفلي: محتوى (بطول العناصر)
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    // صف عنوان Create your account وزر الإغلاق
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Create your account',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.close, size: 16, color: Colors.white),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    // صف الحقلين الأولين (First Name & Last Name)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        children: [
                          // حقل First Name
                          Expanded(
                            child: SizedBox(
                              height: 45,
                              child: TextField(
                                controller: firstNameController,
                                decoration: InputDecoration(
                                  hintText: 'first-name',
                                  hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Color(0xFFFEC54B)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Color(0xFFFEC54B)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(color: Color(0xFFFEC54B)),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 19),
                          // حقل Last Name
                          Expanded(
                            child: SizedBox(
                              height: 45,
                              child: TextField(
                                controller: lastNameController,
                                decoration: InputDecoration(
                                  hintText: 'last-name',
                                  hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Color(0xFFFEC54B)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Color(0xFFFEC54B)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(color: Color(0xFFFEC54B)),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // حقل الإيميل
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'example@gmail.com',
                            hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Color(0xFFFEC54B)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Color(0xFFFEC54B)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xFFFEC54B)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 13),
                    // حقل كلمة المرور
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Color(0xFFFEC54B)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Color(0xFFFEC54B)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xFFFEC54B)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // نص الشروط
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF303030),
                          ),
                          children: [
                            const TextSpan(text: 'By tapping Sign up you accept all\n '),
                            TextSpan(
                              text: 'terms',
                              style: TextStyle(
                                color: const Color(0xFFFEC54B),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: 'condition',
                              style: TextStyle(
                                color: const Color(0xFFFEC54B),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 23),
                    // زر CREATE AN ACCOUNT
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/main_screen');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFEC54B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'CREATE AN ACCOUNT',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}