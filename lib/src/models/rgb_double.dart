part of '../../uni_color_model.dart';

/// RGB double model of color.
class RgbDoubleColor extends DoubleColor {
  const RgbDoubleColor({
    super.channelPresentation,
    required super.channel1,
    required super.channel2,
    required super.channel3,
    super.index,
    super.name,
  }) : super(
          channel0: 1.0,
          model: ColorModel.rgb,
        );
}
