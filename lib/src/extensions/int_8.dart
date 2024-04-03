part of '../../uni_color_model.dart';

/// [int] doesn't know about the color representation:
/// the extension name interprets it.
/// See [ColorModelIntBitsExt.intBitsChannelNColor].
extension ColorModelInt8Ext on int {
  /// The 8 bits channel of color.
  /// For example:
  ///   - Alpha in ACMYK color model.
  int get int8Channel0Color => (this >> 32) & 0xff;

  /// The 8 bits channel of color.
  /// For example:
  ///   - Cyan in CMYK color model.
  ///   - Alpha in ARGB color model.
  ///   - Alpha in AHSV color model.
  int get int8Channel1Color => (this >> 24) & 0xff;

  /// The 8 bits channel of color.
  /// For example:
  ///   - Red in RGB color model.
  int get int8Channel2Color => (this >> 16) & 0xff;

  /// The 8 bits channel of color.
  /// For example:
  ///   - Green in RGB color model.
  int get int8Channel3Color => (this >> 8) & 0xff;

  /// For example:
  ///   - Blue in RGB color model.
  /// The 8 bits channel of color.
  int get int8Channel4Color => (this >> 0) & 0xff;

  /// Converts to hexadecimal [String] value with [n] padding left [filler].
  String hex([int n = 2, String filler = '0']) =>
      toRadixString(16).padLeft(n, filler);
}
