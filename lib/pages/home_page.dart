import 'package:flutter/material.dart';

import '../shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgorundColor,
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontWeight: bold),
        ),
      ),
    );
  }
}
