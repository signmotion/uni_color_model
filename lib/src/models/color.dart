part of '../../uni_color_model.dart';

/// The universal class for color.
/// The values can represent any [ColorModel] with opacity typed [T].
/// [T] can be [int], [double], [String], etc.
class UniColor<T> implements Comparable<UniColor<T>> {
  const UniColor({
    required this.channelDepths,
    required this.channelRanges,
    required this.model,
    this.channelPresentation = ColorChannelPresentation.hex,
    required this.hasAlpha,
    required this.channels,
    this.index,
    this.code = '',
    this.defaultLanguage = 'en',
    String? name,
    Names? names,
    this.group = '',
  })  : assert(channelDepths.length == 5),
        assert(channelRanges.length == 5),
        _name = name,
        _names = names;

  /// Bits per channels.
  final List<int> channelDepths;

  /// Min and max values for channels.
  final List<(T, T)> channelRanges;

  final ColorModel model;

  final ColorChannelPresentation channelPresentation;

  /// Has alpha channel for model.
  /// Reason: The color can be fully transparent but has [hasAlpha].
  final bool hasAlpha;

  T? get alpha => hasAlpha ? channels[0] : null;

  /// Channels including alpha value as the first element.
  final List<T> channels;

  /// Some colors have an index.
  final int? index;

  bool get hasIndex => index != null;

  /// A color code.
  final String code;

  /// A default language for color name as Alpha2-code standard.
  final String defaultLanguage;

  /// A color name on [defaultLanguage].
  final String? _name;
  String get name => _name ?? _names?[defaultLanguage] ?? '';

  /// Color names.
  final Names? _names;
  Names get names => _names ?? Names({defaultLanguage: name});

  /// Some palettes can have a group for color.
  final String group;

  bool get hasName => names.map.isNotEmpty;

  @override
  bool operator ==(Object other) =>
      other is UniColor<T> &&
      channelDepths == other.channelDepths &&
      channelRanges == other.channelRanges &&
      model == other.model &&
      channelPresentation == other.channelPresentation &&
      equalChannels(other) &&
      index == other.index &&
      code == other.code &&
      name == other.name &&
      group == other.group;

  /// `true` when a channels [n] are equal.
  bool equalChannelN(int n, UniColor<T> b, {int decimals = -1}) =>
      channels[n] == b.channels[n];

  /// `true` when all channels are equal.
  bool equalChannels(UniColor<T> b, {int decimals = -1}) {
    for (var n = 0; n < channels.length; ++n) {
      if (!equalChannelN(n, b, decimals: decimals)) {
        return false;
      }
    }

    return true;
  }

  bool sameModel(UniColor<T> b) => model == b.model;

  void assertSameModel(UniColor<T> b) {
    if (model != b.model) {
      throw ArgumentError('The color models should be same.'
          ' $model != ${b.model}');
    }
  }

  void assertModel(ColorModel b) {
    if (model != b) {
      throw ArgumentError('The color models should be `$b`. `$model`');
    }
  }

  @override
  int compareTo(UniColor<T> b) => '$this'.compareTo('$b');

  @override
  String toString() => ' $channelDepths'
      ' $channelRanges'
      ' $model'
      ' $channelPresentation'
      ' $channels'
      ' $index'
      ' `$code`'
      ' `$name`'
      ' $names'
      ' `$group`';

  @override
  int get hashCode => [
        channelDepths,
        channelRanges,
        model,
        channelPresentation,
        channels,
        index,
        code,
        name,
        names,
        group,
      ].hashCode;
}
