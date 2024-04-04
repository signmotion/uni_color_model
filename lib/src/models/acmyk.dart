part of '../../uni_color_model.dart';

/// ACMYK model of color.
class AcmykColor<T extends num> extends NumColor<T> {
  AcmykColor({
    required T alpha,
    required T cyan,
    required T magenta,
    required T yellow,
    required T black,
    super.index,
    super.code,
    super.name,
    super.names,
    super.group,
  }) : super(
          hasAlpha: true,
          model: ColorModel.cmyk,
          channels: [alpha, cyan, magenta, yellow, black],
        );

  factory AcmykColor.acmyk(T a, T c, T m, T y, T k) =>
      AcmykColor(alpha: a, cyan: c, magenta: m, yellow: y, black: k);

  /// Alpha channel.
  T get a => channels[0];

  /// Cyan channel.
  T get c => channels[1];

  /// Magenta channel.
  T get m => channels[2];

  /// Yellow channel.
  T get y => channels[3];

  /// Black channel.
  T get k => channels[4];

  // ! All converters declared as extensions. See folder `converters`.
}
