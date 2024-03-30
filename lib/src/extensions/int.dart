part of '../../uni_color_model.dart';

extension ColorModelInt8Ext on int {
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channel0: int8Channel0Color,
        channel1: int8Channel1Color,
        channel2: int8Channel2Color,
        channel3: int8Channel3Color,
      );

  RgbInt8Color get rgbInt8Color => RgbInt8Color.rgb(
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );

  /// The zero (alpha in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel0Color => (0xff000000 & this) >> 24;

  /// The first (red in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel1Color => (0x00ff0000 & this) >> 16;

  /// The second (green in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel2Color => (0x0000ff00 & this) >> 8;

  /// The third (blue in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel3Color => (0x000000ff & this) >> 0;

  int get argbInt8ToRgbInt8Color => this & 0xffffff;

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

  String get argbInt8ToArgbStringHexInt8Color =>
      toRadixString(16).padLeft(8, '0');

  String get argbInt8ToRgbStringHexInt8Color =>
      argbInt8ToRgbInt8Color.toRadixString(16).padLeft(6, '0');

  /// For example, RGB.
  String get int8Channels123HexColor => (this & 0xffffff).hex(6);

  /// For example, ARGB.
  String get int8Channels0123HexColor => (this & 0xffffffff).hex(8);

  /// TODO(sign): Remove its?
  String get int8Channel0HexColor => int8Channel0Color.hex();
  String get int8Channel1HexColor => int8Channel1Color.hex();
  String get int8Channel2HexColor => int8Channel2Color.hex();
  String get int8Channel3HexColor => int8Channel3Color.hex();

  /// Converts to hexadecimal [String] value with [n] padding left zeroes.
  String hex([int n = 2]) => toRadixString(16).padLeft(n, '0');
}
