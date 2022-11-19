import 'package:bank_sha/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgorundColor,
      body: Center(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/img_onboarding1.png'),
              ],
              options: CarouselOptions(),
            )
          ],
        ),
      ),
    );
  }
}
