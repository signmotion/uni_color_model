part of '../../uni_color_model.dart';

/// ARGB int 4 model of color.
class ArgbInt4Color extends Int4Color {
  const ArgbInt4Color({
    super.channelPresentation,
    required super.channel0,
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
