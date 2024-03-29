import 'package:flutter/widgets.dart';

class ResponsiveSize {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeWidth;
  static double? blockSizeHeight;

  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockWidth;
  static double? safeBlockHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeWidth = screenWidth! / 100;
    blockSizeHeight = screenHeight! / 100;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockWidth = (screenWidth! - _safeAreaHorizontal!) / 100;
    safeBlockHeight = (screenHeight! - _safeAreaVertical!) / 100;
  }
}