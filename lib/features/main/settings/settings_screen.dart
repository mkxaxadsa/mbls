import 'package:flutter/material.dart';
import 'package:MestlyBest/core/extensions/align_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/expanded_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/mediaquery_ext_on_context.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontFamily: 'SF Pro Text',
          ),
        ).paddingOnly(bottom: 60, top: context.padding.top + 20).align(),
        _divider(),
        _item(
            text: "Privacy Policy",
            icon: Assets.icons.privacy.path,
            onTap:
                'https://docs.google.com/document/d/1yKTJU5ti0qebKUPVVQv-VOIJER0zwOz4VQjJeyL110I/edit?usp=sharing'),
        _divider(),
        _item(
            text: "Terms of use",
            icon: Assets.icons.terms.path,
            onTap:
                'https://docs.google.com/document/d/1Q_03mEulzSPpe15nFGoE7p1aZVLEMj38zNt2Y22jaL0/edit?usp=sharing'),
        _divider(),
        _item(
            text: "Support",
            icon: Assets.icons.privacy.path,
            onTap: 'https://forms.gle/ckZMvG7rfH6oT8zAA'),
        _divider(),
      ],
    ).paddingSymetric(horizontal: 16);
  }

  Widget _divider() {
    return Container(
      width: double.maxFinite,
      height: 1,
      color: Colors.white.withOpacity(.4),
    );
  }

  Widget _item({
    required String text,
    required String icon,
    required String onTap,
  }) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(onTap)) {
          await launch(onTap);
        } else {
          throw 'Could not launch';
        }
      },
      child: SizedBox(
        width: double.maxFinite,
        height: 46,
        child: Row(
          children: [
            SizedBox(
              width: 30,
              child: Image.asset(
                icon,
                height: 21,
              ).align(Alignment.centerLeft),
            ),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xFFFB4E01),
                fontSize: 11.97,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
              ),
            ).expanded(),
            Assets.icons.chevronRight
                .image(
                  width: 8,
                )
                .paddingSymetric(horizontal: 8),
          ],
        ),
      ),
    );
  }
}
