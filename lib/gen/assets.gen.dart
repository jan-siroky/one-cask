/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDataGen {
  const $AssetsDataGen();

  /// File path: assets/data/collection_bottles.json
  String get collectionBottles => 'assets/data/collection_bottles.json';

  /// List of all assets
  List<String> get values => [collectionBottles];
}

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/bottle_placeholder.png
  AssetGenImage get bottlePlaceholder =>
      const AssetGenImage('assets/img/bottle_placeholder.png');

  /// Directory path: assets/img/icons
  $AssetsImgIconsGen get icons => const $AssetsImgIconsGen();

  /// File path: assets/img/launcher_icon.png
  AssetGenImage get launcherIcon =>
      const AssetGenImage('assets/img/launcher_icon.png');

  /// File path: assets/img/screen_background.png
  AssetGenImage get screenBackground =>
      const AssetGenImage('assets/img/screen_background.png');

  /// File path: assets/img/splash_screen_logo.png
  AssetGenImage get splashScreenLogo =>
      const AssetGenImage('assets/img/splash_screen_logo.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bottlePlaceholder, launcherIcon, screenBackground, splashScreenLogo];
}

class $AssetsImgIconsGen {
  const $AssetsImgIconsGen();

  /// File path: assets/img/icons/bottle.png
  AssetGenImage get bottle =>
      const AssetGenImage('assets/img/icons/bottle.png');

  /// File path: assets/img/icons/collection.png
  AssetGenImage get collection =>
      const AssetGenImage('assets/img/icons/collection.png');

  /// File path: assets/img/icons/genuine.png
  AssetGenImage get genuine =>
      const AssetGenImage('assets/img/icons/genuine.png');

  /// File path: assets/img/icons/scan.png
  AssetGenImage get scan => const AssetGenImage('assets/img/icons/scan.png');

  /// File path: assets/img/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/img/icons/settings.png');

  /// File path: assets/img/icons/timeline_card_line.png
  AssetGenImage get timelineCardLine =>
      const AssetGenImage('assets/img/icons/timeline_card_line.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bottle, collection, genuine, scan, settings, timelineCardLine];
}

class Assets {
  Assets._();

  static const $AssetsDataGen data = $AssetsDataGen();
  static const $AssetsImgGen img = $AssetsImgGen();
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
