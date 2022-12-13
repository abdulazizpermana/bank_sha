import 'package:bank_sha/pages/home_page.dart';
import 'package:bank_sha/pages/onboarding_page.dart';
import 'package:bank_sha/pages/signin_page.dart';
import 'package:bank_sha/pages/signup_page.dart';
import 'package:bank_sha/pages/signup_set_ktp.dart';
import 'package:bank_sha/pages/signup_set_profile.dart';
import 'package:bank_sha/pages/signup_success.dart';
import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-setprofile': (context) => const SignUpSetProfile(),
        '/sign-up-setktp': (context) => const SignUpSetKtp(),
        '/sign-up-success': (context) => const SignUpSuccess(),
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}
