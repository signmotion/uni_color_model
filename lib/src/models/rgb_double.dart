part of '../../uni_color_model.dart';

/// RGB double model of color.
class RgbDoubleColor extends DoubleColor {
  const RgbDoubleColor({
    super.channelRanges,
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
          channel0: 1.0,
          channel4: 0.0,
          model: ColorModel.rgb,
        );
}
