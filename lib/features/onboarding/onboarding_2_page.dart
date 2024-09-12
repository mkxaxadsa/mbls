import 'package:flutter/material.dart';
import 'package:MestlyBest/app/global_navigator/global_navigator.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/features/main/main_screen.dart';
import 'package:MestlyBest/features/onboarding/onboarding_3_page.dart';
import 'package:MestlyBest/gen/assets.gen.dart';
import 'package:MestlyBest/managers/hive_manager.dart';

class Onboarding2Page extends StatefulWidget {
  const Onboarding2Page({super.key});

  @override
  State<Onboarding2Page> createState() => _Onboarding2PageState();
}

class _Onboarding2PageState extends State<Onboarding2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.onboarding2Bg.image(
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
                    'Stay up to date with all the news, current events and transfers',
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
                      Navigation.push(context, page: const Onboarding3Page());
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
