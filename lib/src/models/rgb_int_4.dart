part of '../../uni_color_model.dart';

/// RGB int 4 model of color.
class RgbInt4Color extends Int4Color {
  const RgbInt4Color({
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
}
