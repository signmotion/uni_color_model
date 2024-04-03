part of '../../uni_color_model.dart';

/// RGB int 8 model of color.
class RgbInt8Color extends Int8Color
    with RgbIntColorMix, RgbInt8ColorMix
    implements RgbColor {
  RgbInt8Color({
    super.channelPresentation,
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
          hasAlpha: false,
          model: ColorModel.rgb,
          channels: [0, 0, red, green, blue],
        );

  factory RgbInt8Color.rgb(int r, int g, int b) =>
      RgbInt8Color(red: r, green: g, blue: b);

  factory RgbInt8Color.rgbIndexName(
    int r,
    int g,
    int b,
    int index,
    String name,
  ) =>
      RgbInt8Color(
        red: r,
        green: g,
        blue: b,
        index: index,
        name: name,
      );

  factory RgbInt8Color.rgbName(int r, int g, int b, String name) =>
      RgbInt8Color(red: r, green: g, blue: b, name: name);

  factory RgbInt8Color.rgbNames(
    int r,
    int g,
    int b,
    Names names,
  ) =>
      RgbInt8Color(
        red: r,
        green: g,
        blue: b,
        names: names,
      );

  factory RgbInt8Color.value(int v) => RgbInt8Color(
        red: v.int8Channel2Color,
        green: v.int8Channel3Color,
        blue: v.int8Channel4Color,
      );
}
