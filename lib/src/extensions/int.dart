part of '../../uni_color_model.dart';

extension ColorModelInt8Ext on int {
  /// `true` then [int8Channel0Color] is not zero.
  bool get hasInt8Channel0Color => int8Channel0Color > 0;

  /// `true` then [int8Channel1Color] is not zero.
  bool get hasInt8Channel1Color => int8Channel1Color > 0;

  /// `true` then [int8Channel2Color] is not zero.
  bool get hasInt8Channel2Color => int8Channel2Color > 0;

  /// `true` then [int8Channel3Color] is not zero.
  bool get hasInt8Channel3Color => int8Channel3Color > 0;

  /// The zero (alpha in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel0Color => (0xff000000 & this) >> 24;

  /// The first (red in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel1Color => (0x00ff0000 & this) >> 16;

  /// The second (green in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel2Color => (0x0000ff00 & this) >> 8;

  /// The third (blue in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel3Color => (0x000000ff & this) >> 0;

  /// For example, ARGB.
  int get int8Channels0123 => this & 0xffffffff;

  /// For example, RGB.
  int get int8Channels123 => this & 0xffffff;

  /// For example, CMYK.
  int get int8Channels1234 => this & 0xffffffff;

  /// For example, ACMYK.
  int get int8Channels01234 => this & 0xffffffffff;

  /// For example, ARGB.
  String get int8Channels0123HexColor => int8Channels0123.hex(8);

  /// For example, RGB.
  String get int8Channels123HexColor => int8Channels123.hex(6);

  /// For example, CMYK.
  String get int8Channels1234HexColor => int8Channels1234.hex(8);

  /// For example, ACMYK.
  String get int8Channels01234HexColor => int8Channels01234.hex(10);

  /// Converts to hexadecimal [String] value with [n] padding left zeroes.
  String hex([int n = 2]) => toRadixString(16).padLeft(n, '0');
}
