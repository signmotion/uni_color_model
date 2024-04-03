part of '../../uni_color_model.dart';

/// [int] doesn't know about the color representation:
/// the extension name interprets it.
extension ColorModelInt8Ext on int {
  /// The zero channel of this color in 8 bits value.
  int get int8Channel0Color => (this >> 24) & 0xff;

  /// The first channel of this color in 8 bits value.
  int get int8Channel1Color => (this >> 16) & 0xff;

  /// The second channel of this color in 8 bits value.
  int get int8Channel2Color => (this >> 8) & 0xff;

  /// The third channel of this color in 8 bits value.
  int get int8Channel3Color => (this >> 0) & 0xff;

  /// For example, ARGB, AHSV.
  int get int8Channels0123 => this & 0xffffffff;

  /// For example, ACMYK.
  int get int8Channels01234 => this & 0xffffffffff;

  /// For example, RGB, XYZ.
  int get int8Channels123 => this & 0xffffff;

  /// For example, CMYK.
  int get int8Channels1234 => this & 0xffffffff;

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
