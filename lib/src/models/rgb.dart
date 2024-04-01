part of '../../uni_color_model.dart';

/// RGB model of color.
abstract class RgbColor {
  /// Red channel.
  int get r;

  /// Green channel.
  int get g;

  /// Blue channel.
  int get b;

  /// [int] presentation.
  int get int24;

  /// [int] presentation.
  String get int24Hex;
}

mixin RgbIntColorMix on UniColor<int> {
  /// Red channel.
  int get r => channel1;

  /// Green channel.
  int get g => channel2;

  /// Blue channel.
  int get b => channel3;
}

mixin RgbInt8ColorMix on RgbIntColorMix {
  /// [int] presentation.
  int get int24 => (0xff & r) << 16 | (0xff & g) << 8 | (0xff & b) << 0;

  /// [int] presentation.
  String get int24Hex => int24.int8Channels123HexColor;

  @override
  String toString() => int24Hex;
}
