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
    this.channel0,
    required this.channel1,
    required this.channel2,
    required this.channel3,
    this.index,
    this.code = '',
    this.defaultLanguage = 'en',
    String? name,
    Names? names,
    this.group = '',
  })  : _name = name,
        _names = names;

  /// Bits per channels including [channel0].
  /// [channel0] goes first.
  final List<int> channelDepths;

  /// Min and max values for channels.
  final List<(T, T)> channelRanges;

  final ColorModel model;

  final ColorChannelPresentation channelPresentation;

  /// An alpha channel for most models.
  final T? channel0;

  /// ! `true` for any [channel0] values when [channel0] is not `null`.
  bool get hasAlpha => channel0 != null;

  final T channel1;
  final T channel2;
  final T channel3;

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

  /// `true` when [channel0]s are equal.
  bool equalChannel0(UniColor<T> b, {int decimals = -1}) =>
      channel0 == b.channel0;

  /// `true` when [channel1]s are equal.
  bool equalChannel1(UniColor<T> b, {int decimals = -1}) =>
      channel1 == b.channel1;

  /// `true` when [channel2]s are equal.
  bool equalChannel2(UniColor<T> b, {int decimals = -1}) =>
      channel2 == b.channel2;

  /// `true` when [channel2]s are equal.
  bool equalChannel3(UniColor<T> b, {int decimals = -1}) =>
      channel3 == b.channel3;

  /// `true` when all channels are equal.
  bool equalChannels(UniColor<T> b, {int decimals = -1}) =>
      equalChannel0(b, decimals: decimals) &&
      equalChannel1(b, decimals: decimals) &&
      equalChannel2(b, decimals: decimals) &&
      equalChannel3(b, decimals: decimals);

  bool sameModel(UniColor<T> b) => model == b.model;

  void assertSameModel(UniColor<T> b) {
    if (model != b.model) {
      throw ArgumentError('The color models should be same.'
          ' $model != ${b.model}');
    }
  }

  void assertArgbModel() {
    if (model == ColorModel.rgb) {
    } else {
      throw ArgumentError('The color models should be RGB. `$model`');
    }
  }

  @override
  int compareTo(UniColor<T> b) => '$this'.compareTo('$b');

  @override
  String toString() => ' $channelDepths'
      ' $channelRanges'
      ' $model'
      ' $channelPresentation'
      ' $channel0:$channel1:$channel2:$channel3'
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
        channel0,
        channel1,
        channel2,
        channel3,
        index,
        code,
        name,
        names,
        group,
      ].hashCode;
}
