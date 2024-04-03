part of '../../uni_color_model.dart';

/// Converters for [int].
extension ColorModelConverterIntExt on int {
  /// RGB
  /// See [rgbWith].
  RgbInt8Color get rgb => RgbInt8Color.value(this);

  /// See [rgb].
  NumColor rgbWith({
    int? channelsDepth,
    List<int>? channelDepths,
  }) {
    assert(channelDepths == null || channelDepths.length == 5);
    assert(
        (channelsDepth == null && channelDepths == null) ||
            (channelsDepth != null && channelDepths == null) ||
            (channelsDepth == null && channelDepths != null),
        '`channelsDepth` or `channelDepths` can be defined, but not both.');

    final depth = channelsDepth ?? 8;
    final depths = channelDepths ?? [depth, depth, depth, depth, depth];
    final ranges = [
      (0, depths[0].pow2N - 1),
      (0, depths[1].pow2N - 1),
      (0, depths[2].pow2N - 1),
      (0, depths[3].pow2N - 1),
      (0, depths[4].pow2N - 1),
    ];

    return NumColor(
      channelDepths: depths,
      channelRanges: ranges,
      model: ColorModel.rgb,
      channel0: intBitsChannelNColor(depths[0], 0),
      channel1: intBitsChannelNColor(depths[1], 1),
      channel2: intBitsChannelNColor(depths[2], 2),
      channel3: intBitsChannelNColor(depths[3], 3),
      channel4: intBitsChannelNColor(depths[4], 4),
    );
  }
}
