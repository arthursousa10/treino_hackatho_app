import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackathon/pages/anoni_page.dart';
import 'package:hackathon/pages/donation_page.dart';

 class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const AnonimosPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.network("https://firebasestorage.googleapis.com/v0/b/hopeassistence.appspot.com/o/hopeassistence_logo_sf.png?alt=media&token=9c6e4300-58cc-4313-ae69-91876f86f1e6")],
      ),
    ));
  }
}
