part of '../../uni_color_model.dart';

/// Converters from [AcmykColor] to structure `int`.
extension ColorModelConverterIntToAcmykNumExt on AcmykColor<num> {}

/// Converters from [AcmykColor] to structure `int`.
extension ColorModelConverterIntToAcmykIntExt on AcmykColor<int> {
  /// [int] presentation.
  /// Use [ColorModelConfig] for define own defaults behaviour.
  /// See [intWith].
  int get int40 => channels.packToInt8;

  /// We can interpret channels with different bit depths per channel.
  /// Define [depth] when all channels are equal or [depths] when
  /// channels have different depth.
  /// See [int40].
  int intWith({
    int? depth,
    List<int>? depths,
  }) {
    assert(depths == null || depths.length == 5);
    assert(
        (depth == null && depths == null) ||
            (depth != null && depths == null) ||
            (depth == null && depths != null),
        '`depth` or `depths` can be defined, but not both.');

    //final d = depth ?? ColorModelConfig.bitsDepth;
    //final ds = depths ?? [d, d, d, d, d];

    return channels.packToInt8;
  }
}
