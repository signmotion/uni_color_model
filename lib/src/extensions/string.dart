part of '../../uni_color_model.dart';

extension ColorModelStringExt on String {
  /// The zero (alpha in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel0Color =>
      length < 2 ? -1 : int.parse('0x${substring(0, 0 + 2)}');

  /// The first (red in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel1Color =>
      length < 4 ? -1 : int.parse('0x${substring(2, 2 + 2)}');

  /// The second (green in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel2Color =>
      length < 6 ? -1 : int.parse('0x${substring(4, 4 + 2)}');

  /// The third (blue in ARGB model) channel of this color in an 8 bit value.
  int get int8Channel3Color =>
      length < 8 ? -1 : int.parse('0x${substring(6, 6 + 2)}');

  /// The fourth (black in CMYK model) channel of this color in an 8 bit value.
  int get int8Channel4Color =>
      length < 10 ? -1 : int.parse('0x${substring(8, 8 + 2)}');

  // /// For example, ARGB.
  // int get int8Channels0123 => this & 0xffffffff;

  // /// For example, RGB.
  // int get int8Channels123 => this & 0xffffff;

  // /// For example, CMYK.
  // int get int8Channels1234 => this & 0xffffffff;

  // /// For example, ACMYK.
  // int get int8Channels01234 => this & 0xffffffffff;

  /// The string with latin characters only.
  String get normalizedNameColor =>
      replaceAll(RegExp(r'[\W]+'), '').trim().toLowerCase();
}
