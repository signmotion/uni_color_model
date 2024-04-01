part of '../../uni_color_model.dart';

/// Color with [num] values per channels.
class NumColor<T extends num> extends UniColor<T> {
  const NumColor({
    required super.channelDepths,
    required super.channelRanges,
    required super.model,
    super.channelPresentation,
    super.channel0,
    required super.channel1,
    required super.channel2,
    required super.channel3,
    super.index,
    super.code,
    super.defaultLanguage,
    super.name,
    super.names,
    super.group,
  });

  /// Subtract channels.
  @override
  UniColor<T> operator -(UniColor<T> b) {
    assertSameModel(b);
    assertArgbModel();
    return UniColor(
      channelDepths: channelDepths,
      channelRanges: channelRanges,
      model: model,
      channelPresentation: channelPresentation,
      channel0: ((channel0 ?? 0) - (b.channel0 ?? 0)) as T,
      channel1: (channel1 - b.channel1) as T,
      channel2: (channel2 - b.channel2) as T,
      channel3: (channel3 - b.channel3) as T,
      index: index,
      code: code,
      defaultLanguage: defaultLanguage,
      name: name,
      names: names,
      group: group,
    );
  }

  @override
  UniColor<T> get square => UniColor(
        channelDepths: channelDepths,
        channelRanges: channelRanges,
        model: model,
        channelPresentation: channelPresentation,
        channel0: ((channel0 ?? 0) * (channel0 ?? 0)) as T,
        channel1: (channel1 * channel1) as T,
        channel2: (channel2 * channel2) as T,
        channel3: (channel3 * channel3) as T,
        index: index,
        code: code,
        defaultLanguage: defaultLanguage,
        name: name,
        names: names,
        group: group,
      );

  @override
  T get summarize => ((channel0 ?? 0) + channel1 + channel2 + channel3) as T;

  /// `true` when [channel0]s are equal.
  @override
  bool equalChannel0(UniColor<T> b, {int decimals = -1}) => (channel0 ?? 0)
      .toDouble()
      .equalWithDecimals((b.channel0 ?? 0).toDouble(), decimals: decimals);

  /// `true` when [channel1]s are equal.
  @override
  bool equalChannel1(UniColor<T> b, {int decimals = -1}) => channel1
      .toDouble()
      .equalWithDecimals(b.channel1.toDouble(), decimals: decimals);

  /// `true` when [channel2]s are equal.
  @override
  bool equalChannel2(UniColor<T> b, {int decimals = -1}) => channel2
      .toDouble()
      .equalWithDecimals(b.channel2.toDouble(), decimals: decimals);

  /// `true` when [channel2]s are equal.
  @override
  bool equalChannel3(UniColor<T> b, {int decimals = -1}) => channel3
      .toDouble()
      .equalWithDecimals(b.channel3.toDouble(), decimals: decimals);
}
