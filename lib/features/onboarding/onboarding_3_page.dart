import 'package:flutter/material.dart';
import 'package:MestlyBest/app/global_navigator/global_navigator.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/features/main/main_screen.dart';
import 'package:MestlyBest/gen/assets.gen.dart';
import 'package:MestlyBest/managers/hive_manager.dart';

class Onboarding3Page extends StatefulWidget {
  const Onboarding3Page({super.key});

  @override
  State<Onboarding3Page> createState() => _Onboarding3PageState();
}

class _Onboarding3PageState extends State<Onboarding3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.onboarding3Bg.image(
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            left: 16,
            right: 16,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 18,
                  ),
                  const Text(
                    'Play the quiz to test your knowledge about football',
                    style: TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 32,
                      fontFamily: 'SF UI Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ).paddingSymetric(horizontal: 30),
                  const Spacer(
                    flex: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      HiveManager.setIsNotFirstTimeOpen();
                      Navigation.pushAndRemoveUntil(context,
                          page: const MainPage());
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFB4E01),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0xFFFAFAFA),
                          fontSize: 22,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 26,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
