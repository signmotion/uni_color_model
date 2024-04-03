part of '../../uni_color_model.dart';

/// ARGB double model of color.
class ArgbDoubleColor extends DoubleColor {
  ArgbDoubleColor({
    super.channelPresentation,
    required double alpha,
    required double red,
    required double green,
    required double blue,
    super.index,
    super.code,
    super.defaultLanguage,
    super.name,
    super.names,
    super.group,
  }) : super(
          hasAlpha: true,
          model: ColorModel.rgb,
          channels: [0, alpha, red, green, blue],
        );
}
