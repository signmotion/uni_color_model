part of '../../uni_color_model.dart';

extension ColorModelConverterInt8Ext on int {
  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channel0: hasInt8Channel0Color ? int8Channel0Color : 0xff,
        channel1: int8Channel1Color,
        channel2: int8Channel2Color,
        channel3: int8Channel3Color,
      );

  List<int> get argbInt8ToArgbListInt8Color => [
        int8Channel0Color,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get argbInt8ToArgbStringHexInt8Color => hex(8);

  int get argbInt8ToRgbInt8Color => this & 0xffffff;

  List<int> get argbInt8ToRgbListInt8Color => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get argbInt8ToRgbStringHexInt8Color => argbInt8ToRgbInt8Color.hex(6);

  RgbInt8Color get rgbInt8Color => RgbInt8Color.rgb(
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );

  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  int get rgbInt8ToArgbInt8Color =>
      hasInt8Channel0Color ? this : this | 0xff000000;

  List<int> get rgbInt8ToRgbListInt8Color => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  String get rgbInt8ToArgbStringHexInt8Color => rgbInt8ToArgbInt8Color.hex(8);

  String get rgbInt8ToRgbStringHexInt8Color => hex(6);
}
