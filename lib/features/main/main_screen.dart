import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/features/main/matches/matches_screen.dart';
import 'package:flutter/material.dart';

import 'package:MestlyBest/features/main/components/bottom_bar.dart';
import 'package:MestlyBest/features/main/news/news_screen.dart';
import 'package:MestlyBest/features/main/quiz/quiz_page.dart';
import 'package:MestlyBest/features/main/settings/settings_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  final pages = [
    const MatchesPage(),
    const NewsPage(),
    const QuizPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003266),
      body: Column(
        children: [
          pages[currentPage].expanded(),
          BottomBar(
            currentPage: currentPage,
            onPageChanged: (p0) {
              setState(() {
                currentPage = p0;
              });
            },
          )
        ],
      ),
    );
  }
}
