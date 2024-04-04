part of '../../uni_color_model.dart';

/// Color with [num] values per channels.
class NumColor<T extends num> extends UniColor<T> {
  const NumColor({
    required super.model,
    required super.hasAlpha,
    required super.channels,
    super.index,
    super.code,
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
    ColorModel? model,
    bool? hasAlpha,
    List<T>? channels,
    int? index,
    String? code,
    String? name,
    Names? names,
    String? group,
  }) =>
      NumColor(
        model: model ?? this.model,
        hasAlpha: hasAlpha ?? this.hasAlpha,
        channels: channels ?? this.channels,
        index: index ?? this.index,
        code: code ?? this.code,
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
