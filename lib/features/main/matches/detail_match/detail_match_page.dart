// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:MestlyBest/core/extensions/align_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/mediaquery_ext_on_context.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';

import 'package:MestlyBest/data/models/match.dart';
import 'package:MestlyBest/features/main/matches/components/match_item.dart';
import 'package:MestlyBest/gen/assets.gen.dart';

class DetailMatchPage extends StatefulWidget {
  const DetailMatchPage({
    Key? key,
    required this.match,
  }) : super(key: key);
  final FootballMatch match;
  @override
  State<DetailMatchPage> createState() => _DetailMatchPageState();
}

class _DetailMatchPageState extends State<DetailMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003A79),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 200,
                    child: Assets.images.statHeader.image(fit: BoxFit.cover),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                          child: Assets.icons.chevronLeft.image(width: 8),
                        ),
                      ).paddingLTRB(16, 0, 0, 16),
                      MatchItem(
                        match: widget.match,
                        enabled: false,
                      ).paddingLTRB(22, 0, 14, 0),
                    ],
                  ).paddingOnly(top: context.padding.top),
                ],
              ),
              Assets.images.gameScheme
                  .image(width: double.maxFinite)
                  .paddingSymetric(horizontal: 30, vertical: 30),
              _label(leftText: "7", centerText: "Shot", rightText: "16"),
              _label(
                  leftText: "35%",
                  centerText: "Shots on target",
                  rightText: "65%"),
              _label(
                  leftText: "35%", centerText: "Possession", rightText: "65%"),
              _label(leftText: "219", centerText: "Passes", rightText: "158"),
              _label(
                  leftText: "77%",
                  centerText: "Pass accuracy",
                  rightText: "89%"),
              _label(leftText: "12", centerText: "Fouls", rightText: "8"),
              _label(leftText: "3", centerText: "Yellow cards", rightText: "2"),
              _label(leftText: "0", centerText: "Red cards", rightText: "0"),
              _label(leftText: "5", centerText: "Offsides", rightText: "2"),
              _label(leftText: "4", centerText: "Corners", rightText: "6")
                  .paddingOnly(bottom: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _label({
    required String leftText,
    required String centerText,
    required String rightText,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(
            leftText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ).align(),
        ),
        Text(
          centerText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFA2A5B1),
            fontSize: 12,
            fontFamily: 'Montserrat',
          ),
        ).align().expanded(),
        SizedBox(
          width: 60,
          child: Text(
            rightText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ).align(),
        ),
      ],
    ).paddingLTRB(30, 0, 30, 15);
  }
}
