part of '../../uni_color_model.dart';

/// Color with [num] values per channels.
class NumColor<T extends num> extends UniColor<T> {
  const NumColor({
    required super.channelDepths,
    required super.channelRanges,
    required super.model,
    super.channelPresentation,
    required super.hasAlpha,
    required super.channels,
    super.index,
    super.code,
    super.defaultLanguage,
    super.name,
    super.names,
    super.group,
  });

  /// Subtract channels: `channelN - b.channelN`.
  NumColor<T> operator -(UniColor<T> b) {
    assertSameModel(b);

    return copyWith(
      hasAlpha: hasAlpha || b.hasAlpha,
      channels: channels.subtract(b.channels),
    );
  }

  /// Channel multiplication: `channelN * channelN`.
  NumColor<T> get square => copyWith(channels: channels.square);

  /// Summarize channels: `channel0 + channel1 + ...`.
  T get summarize => channels.summarize;

  NumColor<T> copyWith({
    List<int>? channelDepths,
    List<(T, T)>? channelRanges,
    ColorModel? model,
    ColorChannelPresentation? channelPresentation,
    bool? hasAlpha,
    List<T>? channels,
    int? index,
    String? code,
    String? defaultLanguage,
    String? name,
    Names? names,
    String? group,
  }) =>
      NumColor(
        channelDepths: channelDepths ?? this.channelDepths,
        channelRanges: channelRanges ?? this.channelRanges,
        model: model ?? this.model,
        channelPresentation: channelPresentation ?? this.channelPresentation,
        hasAlpha: hasAlpha ?? this.hasAlpha,
        channels: channels ?? this.channels,
        index: index ?? this.index,
        code: code ?? this.code,
        defaultLanguage: defaultLanguage ?? this.defaultLanguage,
        name: name ?? this.name,
        names: names ?? this.names,
        group: group ?? this.group,
      );

  /// `true` when channels [n] are equal.
  @override
  bool equalChannelN(int n, UniColor<T> b, {int decimals = -1}) => channels[n]
      .toDouble()
      .equalWithDecimals(b.channels[n].toDouble(), decimals: decimals);
}
