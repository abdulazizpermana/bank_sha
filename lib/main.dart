import 'package:bank_sha/pages/onboarding_page.dart';
import 'package:bank_sha/pages/profile/profile-edit-success.dart';
import 'package:bank_sha/pages/profile/profile_edit.dart';
import 'package:bank_sha/pages/profile/profile_edit_pin.dart';
import 'package:bank_sha/pages/profile/profile_page.dart';
import 'package:bank_sha/pages/signin_page.dart';
import 'package:bank_sha/pages/signup_page.dart';
import 'package:bank_sha/pages/signup_set_ktp.dart';
import 'package:bank_sha/pages/signup_set_profile.dart';
import 'package:bank_sha/pages/signup_success.dart';
import 'package:bank_sha/pages/topup/topup-page.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/pin/pin_page.dart';
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
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgorundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgorundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          )),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-setprofile': (context) => const SignUpSetProfile(),
        '/sign-up-setktp': (context) => const SignUpSetKtp(),
        '/sign-up-success': (context) => const SignUpSuccess(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccess(),
        '/topup': (context) => const TopUpPage(),
      },
    );
  }
}
