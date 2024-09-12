// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:MestlyBest/app/global_navigator/global_navigator.dart';
import 'package:MestlyBest/core/extensions/align_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';

import 'package:MestlyBest/core/models/quiz_model.dart';
import 'package:MestlyBest/features/main/main_screen.dart';
import 'package:MestlyBest/gen/assets.gen.dart';

class QuizGamePage extends StatefulWidget {
  const QuizGamePage({
    Key? key,
    required this.quiz,
  }) : super(key: key);
  final Quiz quiz;
  @override
  State<QuizGamePage> createState() => _QuizGamePageState();
}

class _QuizGamePageState extends State<QuizGamePage> {
  int currentIndex = 0;
  int currentAnswerIndex = -1;
  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.quiz.questions[currentIndex];

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned.fill(
              child: Assets.images.onboarding1Bg.image(fit: BoxFit.cover),
            ),
            Positioned.fill(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      height: 40,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              color: Colors.transparent,
                              alignment: Alignment.center,
                              child: Assets.icons.chevronLeft.image(width: 8),
                            ),
                          ),
                          const Text(
                            'Quiz',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                            ),
                          ).align().expanded(),
                          const SizedBox(
                            width: 40,
                          ),
                        ],
                      ).paddingSymetric(horizontal: 8),
                    ).paddingOnly(bottom: 5),
                    SizedBox(
                      width: double.maxFinite,
                      height: 36,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        itemCount: widget.quiz.questions.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 36,
                            height: 36,
                            decoration: ShapeDecoration(
                              color: currentIndex == index
                                  ? const Color(0xFFFB4E01)
                                  : const Color(0xffBBBBBB),
                              shape: const OvalBorder(),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ).paddingOnly(right: 15);
                        },
                      ),
                    ).paddingOnly(bottom: 13),
                    Container(
                      width: double.maxFinite,
                      height: 2,
                      decoration: const BoxDecoration(color: Color(0xFFFB4E01)),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Text(
                          currentQuestion.question,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ).paddingAll(24),
                        CachedNetworkImage(
                          imageUrl: currentQuestion.qustionImage,
                          cacheKey: currentQuestion.question,
                          width: double.maxFinite,
                        ).paddingSymetric(horizontal: 24, vertical: 30),
                        ...List.generate(
                          currentQuestion.variants.length,
                          (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentAnswerIndex = index;
                                });
                              },
                              child: Container(
                                color: Colors.transparent,
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        color: currentAnswerIndex == index
                                            ? const Color(0xFFFB4E01)
                                            : const Color(0xffBBBBBB),
                                        shape: const OvalBorder(),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${index + 1}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontFamily: 'SF Pro Text',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ).paddingOnly(right: 11),
                                    Text(
                                      currentQuestion.variants[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ).expanded(),
                                  ],
                                ),
                              ).paddingOnly(top: 30),
                            ).paddingSymetric(horizontal: 40);
                          },
                        ),
                      ],
                    ).expanded(),
                    GestureDetector(
                      onTap: () {
                        Future.delayed(const Duration(seconds: 1))
                            .then((value) {
                          if (currentAnswerIndex == -1) return;
                          if (currentIndex ==
                              widget.quiz.questions.length - 1) {
                            Navigation.pushAndRemoveUntil(context,
                                page: const MainPage());
                            currentAnswerIndex = -1;
                            return;
                          }
                          setState(() {
                            currentIndex++;
                            currentAnswerIndex = -1;
                          });
                        });
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
                          'Answer',
                          style: TextStyle(
                            color: Color(0xFFFAFAFA),
                            fontSize: 22,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ).paddingSymetric(horizontal: 16, vertical: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
