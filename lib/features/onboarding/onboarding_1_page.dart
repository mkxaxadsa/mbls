import 'package:flutter/material.dart';
import 'package:MestlyBest/app/global_navigator/global_navigator.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/features/main/main_screen.dart';
import 'package:MestlyBest/features/onboarding/onboarding_2_page.dart';
import 'package:MestlyBest/gen/assets.gen.dart';
import 'package:MestlyBest/managers/hive_manager.dart';

class Onboarding1Page extends StatefulWidget {
  const Onboarding1Page({super.key});

  @override
  State<Onboarding1Page> createState() => _Onboarding1PageState();
}

class _Onboarding1PageState extends State<Onboarding1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.onboarding1Bg.image(
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
                    flex: 8,
                  ),
                  const Text(
                    'Join the game! Everything about football in one application.',
                    style: TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 32,
                      fontFamily: 'SF UI Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ).paddingOnly(bottom: 15).paddingSymetric(horizontal: 30),
                  const Text(
                    'News, statistics, analytics - everything for football fans.',
                    style: TextStyle(
                      color: Color(0x66FAFAFA),
                      fontSize: 16,
                      fontFamily: 'SF UI Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ).paddingSymetric(horizontal: 30),
                  Column(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigation.push(context,
                              page: const Onboarding2Page());
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
                      ).paddingOnly(bottom: 24),
                      const Text(
                        'Terms of Use / Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0x66FAFAFA),
                          fontFamily: 'SF UI Display',
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                    ],
                  ).expanded(flex: 13),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
