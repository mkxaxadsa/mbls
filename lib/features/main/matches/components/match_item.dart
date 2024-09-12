// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:MestlyBest/app/global_navigator/global_navigator.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';

import 'package:MestlyBest/data/models/match.dart';
import 'package:MestlyBest/features/main/matches/detail_match/detail_match_page.dart';

class MatchItem extends StatelessWidget {
  const MatchItem({
    Key? key,
    required this.match,
    this.enabled = true,
  }) : super(key: key);
  final FootballMatch match;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 160),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFE84E0F)),
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _teamInfo(
                logo: match.homeTeamLogo,
                name: match.homeTeamTitle,
                subname: "Home",
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    match.league,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFFE84E0F),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.07,
                    ),
                  ).paddingOnly(bottom: 8),
                  const Text(
                    '10 week',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.06,
                    ),
                  ).paddingOnly(bottom: 8),
                  Text(
                    '${match.homeGoals}:${match.awayGoals}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFFE84E0F),
                      fontSize: 34,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 8.50,
                    ),
                  )
                ],
              ).expanded(),
              const SizedBox(
                width: 10,
              ),
              _teamInfo(
                logo: match.awayTeamLogo,
                name: match.awayTeamTitle,
                subname: "Away",
              ),
            ],
          ).paddingOnly(top: 16),
          GestureDetector(
            onTap: () {
              if (!enabled) return;
              Navigation.push(context, page: DetailMatchPage(match: match));
            },
            child: Container(
              width: 132,
              padding: const EdgeInsets.all(5.90),
              decoration: ShapeDecoration(
                color: const Color(0xFFFB4E01),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.42),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Game stats',
                style: TextStyle(
                  color: Color(0xFFFAFAFA),
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ).paddingOnly(bottom: 16);
  }

  Widget _teamInfo({
    required String logo,
    required String name,
    required String subname,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
          ),
          textAlign: TextAlign.center,
        ).paddingOnly(bottom: 2),
        Text(
          subname,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFFAFAFA),
            fontSize: 10,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ).expanded();
  }
}
