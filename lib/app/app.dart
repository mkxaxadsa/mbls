import 'package:flutter/material.dart';
import 'package:MestlyBest/features/splash/splash_screen.dart';

class MostBetApp extends StatefulWidget {
  const MostBetApp({super.key});

  @override
  State<MostBetApp> createState() => _MostBetAppState();
}

class _MostBetAppState extends State<MostBetApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
