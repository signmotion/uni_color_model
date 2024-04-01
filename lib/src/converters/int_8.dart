part of '../../uni_color_model.dart';

extension ColorModelConverterInt8Ext on int {
  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channel0: int8Channel0Color == 0 ? 0xff : int8Channel0Color,
        channel1: int8Channel1Color,
        channel2: int8Channel2Color,
        channel3: int8Channel3Color,
      );

  RgbInt8Color get rgbInt8Color => RgbInt8Color.rgb(
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );

  List<int> get argbInt8ToArgbListInt8Color => [
        int8Channel0Color,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  List<int> get argbInt8ToRgbListInt8Color => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  int get argbInt8ToRgbInt8Color => this & 0xffffff;

  String get argbInt8ToArgbStringHexInt8Color =>
      toRadixString(16).padLeft(8, '0');

  String get argbInt8ToRgbStringHexInt8Color =>
      argbInt8ToRgbInt8Color.toRadixString(16).padLeft(6, '0');
}
