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
}

mixin RgbIntColorMix on UniColor<int> implements RgbColor {
  /// Red channel.
  @override
  int get r => channels[2];

  /// Green channel.
  @override
  int get g => channels[3];

  /// Blue channel.
  @override
  int get b => channels[4];
}

mixin RgbInt8ColorMix on RgbIntColorMix implements RgbColor {
  /// [int] presentation.
  @override
  int get int24 => (0xff & r) << 16 | (0xff & g) << 8 | (0xff & b) << 0;

  @override
  String toString() => int24.hex(6);
}
