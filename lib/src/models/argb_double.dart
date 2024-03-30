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
    super.name,
  }) : super(
          model: ColorModel.rgb,
        );
}
