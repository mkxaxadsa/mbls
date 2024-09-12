/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/chevron_left.png
  AssetGenImage get chevronLeft =>
      const AssetGenImage('assets/icons/chevron_left.png');

  /// File path: assets/icons/chevron_right.png
  AssetGenImage get chevronRight =>
      const AssetGenImage('assets/icons/chevron_right.png');

  /// File path: assets/icons/matches.png
  AssetGenImage get matches => const AssetGenImage('assets/icons/matches.png');

  /// File path: assets/icons/news.png
  AssetGenImage get news => const AssetGenImage('assets/icons/news.png');

  /// File path: assets/icons/privacy.png
  AssetGenImage get privacy => const AssetGenImage('assets/icons/privacy.png');

  /// File path: assets/icons/quiz.png
  AssetGenImage get quiz => const AssetGenImage('assets/icons/quiz.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/subscription_info.png
  AssetGenImage get subscriptionInfo =>
      const AssetGenImage('assets/icons/subscription_info.png');

  /// File path: assets/icons/terms.png
  AssetGenImage get terms => const AssetGenImage('assets/icons/terms.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        chevronLeft,
        chevronRight,
        matches,
        news,
        privacy,
        quiz,
        settings,
        share,
        subscriptionInfo,
        terms
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/game_scheme.png
  AssetGenImage get gameScheme =>
      const AssetGenImage('assets/images/game_scheme.png');

  /// File path: assets/images/matches_header.png
  AssetGenImage get matchesHeader =>
      const AssetGenImage('assets/images/matches_header.png');

  /// File path: assets/images/onboarding_1_bg.png
  AssetGenImage get onboarding1Bg =>
      const AssetGenImage('assets/images/onboarding_1_bg.png');

  /// File path: assets/images/onboarding_2_bg.png
  AssetGenImage get onboarding2Bg =>
      const AssetGenImage('assets/images/onboarding_2_bg.png');

  /// File path: assets/images/onboarding_3_bg.png
  AssetGenImage get onboarding3Bg =>
      const AssetGenImage('assets/images/onboarding_3_bg.png');

  /// File path: assets/images/quiz_bg.png
  AssetGenImage get quizBg => const AssetGenImage('assets/images/quiz_bg.png');

  /// File path: assets/images/stat_header.png
  AssetGenImage get statHeader =>
      const AssetGenImage('assets/images/stat_header.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        gameScheme,
        matchesHeader,
        onboarding1Bg,
        onboarding2Bg,
        onboarding3Bg,
        quizBg,
        statHeader
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
