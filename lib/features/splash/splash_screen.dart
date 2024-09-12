import 'package:flutter/material.dart';
import 'package:MestlyBest/app/global_navigator/global_navigator.dart';
import 'package:MestlyBest/features/main/main_screen.dart';
import 'package:MestlyBest/features/onboarding/onboarding_1_page.dart';
import 'package:MestlyBest/managers/hive_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        if (HiveManager.isFirstTimeOpen) {
          Navigation.pushAndRemoveUntil(context, page: const Onboarding1Page());
        } else {
          Navigation.pushAndRemoveUntil(context, page: const MainPage());
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
