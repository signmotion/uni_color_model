part of '../../uni_color_model.dart';

/// [String] doesn't know about the color representation:
/// the extension name interprets it
extension ColorModelStringExt on String {
  /// The zero channel of this color in 8 bits value.
  int get int8Channel0Color =>
      length < 2 ? -1 : int.parse('0x${substring(0, 0 + 2)}');

  /// The first channel of this color in 8 bits value.
  int get int8Channel1Color =>
      length < 4 ? -1 : int.parse('0x${substring(2, 2 + 2)}');

  /// The second channel of this color in 8 bits value.
  int get int8Channel2Color =>
      length < 6 ? -1 : int.parse('0x${substring(4, 4 + 2)}');

  /// The third channel of this color in 8 bits value.
  int get int8Channel3Color =>
      length < 8 ? -1 : int.parse('0x${substring(6, 6 + 2)}');

  /// The fourth channel of this color in 8 bits value.
  int get int8Channel4Color =>
      length < 10 ? -1 : int.parse('0x${substring(8, 8 + 2)}');

  /// `true` when a string can represent a RGB int 8 color.
  bool get isArgbInt8HexColor {
    final hexColor = replaceAll('#', '');
    return (hexColor.length == 8) && int.tryParse('0x$this') != null;
  }

  /// `true` when a string can represent a RGB int 8 color.
  bool get isRgbInt8HexColor {
    final hexColor = replaceAll('#', '');
    return (hexColor.length == 6) && int.tryParse('0x$this') != null;
  }

  /// `true` when a string can represent an ARGB or RGB int 8 color.
  bool get isInt8HexColor => isArgbInt8HexColor || isRgbInt8HexColor;

  /// The string with latin characters only.
  String get normalizedNameColor =>
      replaceAll(RegExp(r'[\W_]+'), '').trim().toLowerCase();
}
