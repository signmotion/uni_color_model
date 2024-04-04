part of '../../uni_color_model.dart';

/// Converters from [int] to CMYK model with alpha.
extension ColorModelConverterIntToAcmykExt on int {
  /// Use [ColorModelConfig] for define own defaults behaviour.
  /// See [acmykWith].
  AcmykColor<int> get acmyk => acmykWith();

  /// We can interpret [int] with different bit depths per channel.
  /// Define [depth] when all channels are equal or [depths] when
  /// channels have different depth.
  /// See [acmyk].
  AcmykColor<int> acmykWith({
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
      alpha: channelFromIntDepths(0, ds),
      cyan: channelFromIntDepths(1, ds),
      magenta: channelFromIntDepths(2, ds),
      yellow: channelFromIntDepths(3, ds),
      black: channelFromIntDepths(4, ds),
    );
  }
}
