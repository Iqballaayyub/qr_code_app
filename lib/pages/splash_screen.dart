import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/landing_page.dart';
import 'package:qr_code_scanner_and_generator_tutorial/pages/scan_code_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.popAndPushNamed(context, "/land");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          'QR Code App',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
