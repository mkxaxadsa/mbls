import 'package:flutter/material.dart';
import 'package:MestlyBest/core/extensions/align_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/data/apis/matches_api.dart';
import 'package:MestlyBest/data/models/match.dart';
import 'package:MestlyBest/features/main/matches/components/match_item.dart';
import 'package:MestlyBest/gen/assets.gen.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  List<FootballMatch> data = [];

  Future<void> init() async {
    try {
      data = await MatchesRequestApi().getMatches(DateTime.now());
      if (!mounted) return;
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          width: double.maxFinite,
          height: 200,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned.fill(
                child: Assets.images.matchesHeader.image(
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Matches',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                ),
              ).paddingAll(16),
            ],
          ),
        ),
        if (data.isEmpty)
          const CircularProgressIndicator().paddingOnly(top: 200).align()
        else
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 20,
            itemBuilder: (context, index) {
              final match = data[index];
              return MatchItem(match: match);
            },
          ),
      ],
    );
  }
}
