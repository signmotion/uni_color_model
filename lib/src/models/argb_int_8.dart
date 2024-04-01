part of '../../uni_color_model.dart';

/// ARGB int 8 model of color.
class ArgbInt8Color extends Int8Color {
  const ArgbInt8Color({
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
        );
}
