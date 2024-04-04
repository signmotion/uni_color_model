part of '../../uni_color_model.dart';

/// Converters from [int] to CMYK model with alpha.
extension ColorModelConverterIntToAcmykExt on int {
  /// Use [ColorModelConfig] for define own defaults behaviour.
  /// See [acmykWith].
  AcmykColor get acmyk => acmykWith();

  /// See [acmyk].
  /// We can interpret [int] with different bit depths per channel.
  /// Define [depth] when all channels are equal or [depths] when
  /// channels have different depth.
  AcmykColor acmykWith({
    int? depth,
    List<int>? depths,
  }) {
    assert(depths == null || depths.length == 5);
    assert(
        (depth == null && depths == null) ||
            (depth != null && depths == null) ||
            (depth == null && depths != null),
        '`depth` or `depths` can be defined, but not both.');

    final d = depth ?? ColorModelConfig.bitsDepth;
    final ds = depths ?? [d, d, d, d, d];

    return AcmykColor(
      alpha: intDepthsChannelNColor(ds, 0),
      cyan: intDepthsChannelNColor(ds, 1),
      magenta: intDepthsChannelNColor(ds, 2),
      yellow: intDepthsChannelNColor(ds, 3),
      black: intDepthsChannelNColor(ds, 4),
    );
  }
}
