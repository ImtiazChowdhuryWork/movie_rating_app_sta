// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Franchise.ttf
  String get franchise => 'assets/fonts/Franchise.ttf';

  /// File path: assets/fonts/Lora-Regular.ttf
  String get loraRegular => 'assets/fonts/Lora-Regular.ttf';

  /// File path: assets/fonts/Quicksand-Regular.ttf
  String get quicksandRegular => 'assets/fonts/Quicksand-Regular.ttf';

  /// List of all assets
  List<String> get values => [franchise, loraRegular, quicksandRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home_icon.svg
  String get homeIcon => 'assets/icons/home_icon.svg';

  /// List of all assets
  List<String> get values => [homeIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_mini_icon.png
  AssetGenImage get appMiniIcon =>
      const AssetGenImage('assets/images/app_mini_icon.png');

  /// File path: assets/images/onboarding_body_image_one.png
  AssetGenImage get onboardingBodyImageOne =>
      const AssetGenImage('assets/images/onboarding_body_image_one.png');

  /// File path: assets/images/onboarding_body_image_two.png
  AssetGenImage get onboardingBodyImageTwo =>
      const AssetGenImage('assets/images/onboarding_body_image_two.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    appMiniIcon,
    onboardingBodyImageOne,
    onboardingBodyImageTwo,
  ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/add_to_cart.json
  String get addToCart => 'assets/lottie/add_to_cart.json';

  /// File path: assets/lottie/empty_screen.json
  String get emptyScreen => 'assets/lottie/empty_screen.json';

  /// File path: assets/lottie/hamburger.json
  String get hamburger => 'assets/lottie/hamburger.json';

  /// File path: assets/lottie/image_shimmer.json
  String get imageShimmer => 'assets/lottie/image_shimmer.json';

  /// File path: assets/lottie/not_found.json
  String get notFound => 'assets/lottie/not_found.json';

  /// File path: assets/lottie/remove_from_cart.json
  String get removeFromCart => 'assets/lottie/remove_from_cart.json';

  /// File path: assets/lottie/success.json
  String get success => 'assets/lottie/success.json';

  /// File path: assets/lottie/waiting.json
  String get waiting => 'assets/lottie/waiting.json';

  /// List of all assets
  List<String> get values => [
    addToCart,
    emptyScreen,
    hamburger,
    imageShimmer,
    notFound,
    removeFromCart,
    success,
    waiting,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
