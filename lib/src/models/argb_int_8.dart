part of '../../uni_color_model.dart';

/// ARGB int 8 model of color.
class ArgbInt8Color extends Int8Color {
  ArgbInt8Color({
    super.channelPresentation,
    required int alpha,
    required int red,
    required int green,
    required int blue,
    super.index,
    super.code,
    super.defaultLanguage,
    super.name,
    super.names,
    super.group,
  }) : super(
          hasAlpha: true,
          model: ColorModel.rgb,
          channels: [0, alpha, red, green, blue],
        );

  factory ArgbInt8Color.argb(int a, int r, int g, int b) =>
      ArgbInt8Color(alpha: a, red: r, green: g, blue: b);
}
