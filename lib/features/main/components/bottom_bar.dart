// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/mediaquery_ext_on_context.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/gen/assets.gen.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.currentPage,
    required this.onPageChanged,
  });
  final int currentPage;
  final void Function(int) onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 55 + context.padding.bottom,
      decoration: const BoxDecoration(
        color: Color(0xffFB4E01),
      ),
      child: Row(
        children: [
          _item(icon: Assets.icons.matches.path, label: "Matches", index: 0),
          _item(icon: Assets.icons.news.path, label: "News", index: 1),
          _item(icon: Assets.icons.quiz.path, label: "Quiz", index: 2),
          _item(icon: Assets.icons.settings.path, label: "Settings", index: 3),
        ],
      ),
    );
  }

  Widget _item({
    required String icon,
    required String label,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        onPageChanged(index);
      },
      child: Container(
        height: 47,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              height: 24,
              fit: BoxFit.fitHeight,
              color: index == currentPage
                  ? const Color(0xFF003A79)
                  : const Color(0xFFFAFAFA),
            ).paddingOnly(bottom: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: index == currentPage
                    ? const Color(0xFF003A79)
                    : const Color(0xFFFAFAFA),
                fontSize: 10,
                fontFamily: 'SF UI Display',
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    ).expanded();
  }
}
