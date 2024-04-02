part of '../../uni_color_model.dart';

/// ARGB double model of color.
class ArgbDoubleColor extends DoubleColor {
  const ArgbDoubleColor({
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
