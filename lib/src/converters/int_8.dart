part of '../../uni_color_model.dart';

extension ColorModelConverterInt8Ext on int {
  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channel0: hasInt8Channel0Color ? int8Channel0Color : 0xff,
        channel1: int8Channel1Color,
        channel2: int8Channel2Color,
        channel3: int8Channel3Color,
      );

  List<int> get argbInt8ToArgbInt8ListIntBits => [
        int8Channel0Color,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get argbInt8ToArgbInt8StringIntHex => hex(8);

  int get argbInt8ToRgbInt8 => this & 0xffffff;

  List<int> get argbInt8ToRgbListInt8Color => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get argbInt8ToRgbInt8StringIntHex => argbInt8ToRgbInt8.hex(6);

  RgbInt8Color get rgbInt8Color => RgbInt8Color.rgb(
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );

  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  int get rgbInt8ToArgbInt8 => hasInt8Channel0Color ? this : this | 0xff000000;

  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  List<int> get rgbInt8ToArgbInt8ListIntBits => [
        0xff,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  List<int> get rgbInt8ToRgbInt8ListIntBits => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  String get rgbInt8ToArgbInt8StringIntHex => rgbInt8ToArgbInt8.hex(8);

  String get rgbInt8ToRgbInt8StringIntHex => hex(6);
}
