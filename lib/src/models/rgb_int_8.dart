part of '../../uni_color_model.dart';

/// RGB int 8 model of color.
class RgbInt8Color extends Int8Color
    with RgbIntColorMix, RgbInt8ColorMix
    implements RgbColor {
  const RgbInt8Color({
    super.channelPresentation,
    required super.channel1,
    required super.channel2,
    required super.channel3,
    super.index,
    super.code,
    super.defaultLanguage,
    super.name,
    super.names,
    super.group,
  }) : super(
          model: ColorModel.rgb,
          channel4: 0,
        );

  factory RgbInt8Color.rgb(int r, int g, int b) =>
      RgbInt8Color(channel1: r, channel2: g, channel3: b);

  factory RgbInt8Color.rgbIndexName(
    int r,
    int g,
    int b,
    int index,
    String name,
  ) =>
      RgbInt8Color(
        channel1: r,
        channel2: g,
        channel3: b,
        index: index,
        name: name,
      );

  factory RgbInt8Color.rgbName(int r, int g, int b, String name) =>
      RgbInt8Color(channel1: r, channel2: g, channel3: b, name: name);

  factory RgbInt8Color.rgbNames(
    int r,
    int g,
    int b,
    Names names,
  ) =>
      RgbInt8Color(
        channel1: r,
        channel2: g,
        channel3: b,
        names: names,
      );
}
