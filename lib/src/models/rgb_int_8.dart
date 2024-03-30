part of '../../uni_color_model.dart';

/// RGB int 8 model of color.
class RgbInt8Color extends Int8Color {
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

  int get r => channel1;
  int get g => channel2;
  int get b => channel3;

  /// [int] presentation.
  int get int24 =>
      ((0xff & r) << 16 | (0xff & g) << 8 | (0xff & b) << 0) & 0xFFFFFF;

  /// [int] presentation.
  String get int24Hex => int24.int8Channels123HexColor;

  @override
  String toString() => int24Hex;
}
