part of '../../uni_color_model.dart';

/// CMYK model of color.
abstract class CmykColor {
  /// Cyan channel.
  int get c;

  /// Magenta channel.
  int get m;

  /// Yellow channel.
  int get y;

  /// Black channel.
  int get k;

  /// [int] presentation.
  int get int32;
}

mixin CmykIntColorMix on UniColor<int> implements CmykColor {
  /// Cyan channel.
  @override
  int get c => channels[1];

  /// Magenta channel.
  @override
  int get m => channels[2];

  /// Yellow channel.
  @override
  int get y => channels[3];

  /// Black channel.
  @override
  int get k => channels[4];
}

mixin CmykInt8ColorMix on CmykIntColorMix implements CmykColor {
  /// [int] presentation.
  @override
  int get int32 =>
      (0xff & c) << 24 | (0xff & m) << 16 | (0xff & y) << 8 | (0xff & k) << 0;
}
