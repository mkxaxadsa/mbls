// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:MestlyBest/core/extensions/align_ext_on_widget.dart';
import 'package:MestlyBest/core/extensions/mediaquery_ext_on_context.dart';
import 'package:MestlyBest/core/extensions/padding_extension_on_widget.dart';
import 'package:MestlyBest/core/models/news_item_model.dart';
import 'package:MestlyBest/gen/assets.gen.dart';

class DetailNewsPage extends StatefulWidget {
  const DetailNewsPage({
    super.key,
    required this.item,
  });
  final NewsItemModel item;
  @override
  State<DetailNewsPage> createState() => _DetailNewsPageState();
}

class _DetailNewsPageState extends State<DetailNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003266),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 372,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: widget.item.imageUrl,
                    cacheKey: widget.item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0x00111111), Color(0xFF003266)],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Text(
                    widget.item.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ).paddingAll(16).align(Alignment.bottomLeft),
                ),
                Positioned(
                  left: 16,
                  top: 16 + context.padding.top,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Assets.icons.chevronLeft.image(
                      width: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            widget.item.text,
            style: const TextStyle(
              color: Color(0xFFA2A5B1),
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ).paddingAll(16),
        ],
      ),
    );
  }
}
