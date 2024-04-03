part of '../../uni_color_model.dart';

/// RGB double model of color.
class RgbDoubleColor extends DoubleColor {
  RgbDoubleColor({
    super.channelRanges,
    super.channelPresentation,
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
          hasAlpha: false,
          model: ColorModel.rgb,
          channels: [0, 0, red, green, blue],
        );
}
