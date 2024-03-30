part of '../../uni_color_model.dart';

/// The universal class for color.
/// The values can represent any [ColorModel] with opacity typed [N].
class UniColor<N extends num> {
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
  })  : assert(name != null || names != null),
        _name = name,
        _names = names;

  /// All converters has a suffix `Color`.
  RgbInt8Color get rgbInt8Color => RgbInt8Color(
        channelPresentation: channelPresentation,
        channel1: channel1.round(),
        channel2: channel2.round(),
        channel3: channel3.round(),
        code: code,
        index: index,
        defaultLanguage: defaultLanguage,
        name: name,
        names: names,
        group: group,
      );

  /// Bits per channels including [channel0].
  /// [channel0] goes first.
  final List<int> channelDepths;

  /// Min and max values for channels.
  final List<(N, N)> channelRanges;

  final ColorModel model;

  final ColorChannelPresentation channelPresentation;

  /// An alpha channel for most models.
  final N? channel0;

  bool get hasAlpha => channel0 != null;

  final N channel1;
  final N channel2;
  final N channel3;

  /// Some colors have an index.
  final int? index;

  bool get hasIndex => index != null;

  /// A color code.
  final String code;

  /// A default language for color name as Alpha2-code standard.
  final String defaultLanguage;

  /// A color name on [defaultLanguage].
  final String? _name;
  String get name => _name ?? names[defaultLanguage]!;

  /// Color names.
  final Names? _names;
  Names get names => _names ?? Names({defaultLanguage: name});

  /// Some palettes can have a group for color.
  final String group;

  bool get hasName => names.map.isNotEmpty;

  @override
  bool operator ==(Object other) =>
      other is UniColor<N> &&
      channelDepths == other.channelDepths &&
      channelRanges == other.channelRanges &&
      model == other.model &&
      channelPresentation == other.channelPresentation &&
      channel0 == other.channel0 &&
      channel1 == other.channel1 &&
      channel2 == other.channel2 &&
      channel3 == other.channel3 &&
      index == other.index &&
      code == other.code &&
      name == other.name &&
      group == other.group;

  /// Subtract channels.
  UniColor operator -(UniColor b) {
    assertSameModel(b);
    assertArgbModel();
    return UniColor(
      channelDepths: channelDepths,
      channelRanges: channelRanges,
      model: model,
      channelPresentation: channelPresentation,
      channel0: ((channel0 ?? 0) - (b.channel0 ?? 0)) as N,
      channel1: (channel1 - b.channel1) as N,
      channel2: (channel2 - b.channel2) as N,
      channel3: (channel3 - b.channel3) as N,
      index: index,
      code: code,
      defaultLanguage: defaultLanguage,
      name: name,
      names: names,
      group: group,
    );
  }

  /// this ^ 2
  UniColor get square => UniColor(
        channelDepths: channelDepths,
        channelRanges: channelRanges,
        model: model,
        channelPresentation: channelPresentation,
        channel0: ((channel0 ?? 0) * (channel0 ?? 0)) as N,
        channel1: (channel1 * channel1) as N,
        channel2: (channel2 * channel2) as N,
        channel3: (channel3 * channel3) as N,
        index: index,
        code: code,
        defaultLanguage: defaultLanguage,
        name: name,
        names: names,
        group: group,
      );

  N get summarize => ((channel0 ?? 0) + channel1 + channel2 + channel3) as N;

  /// `true` when [channel0]s are equal.
  bool equalChannel0(UniColor b, {int decimals = -1}) => (channel0 ?? 0)
      .toDouble()
      .equalWithDecimals((b.channel0 ?? 0).toDouble(), decimals: decimals);

  /// `true` when [channel1]s are equal.
  bool equalChannel1(UniColor b, {int decimals = -1}) => channel1
      .toDouble()
      .equalWithDecimals(b.channel1.toDouble(), decimals: decimals);

  /// `true` when [channel2]s are equal.
  bool equalChannel2(UniColor b, {int decimals = -1}) => channel2
      .toDouble()
      .equalWithDecimals(b.channel2.toDouble(), decimals: decimals);

  /// `true` when [channel2]s are equal.
  bool equalChannel3(UniColor b, {int decimals = -1}) => channel3
      .toDouble()
      .equalWithDecimals(b.channel3.toDouble(), decimals: decimals);

  /// `true` when all channels are equal.
  bool equalChannels(UniColor b, {int decimals = -1}) =>
      equalChannel0(b, decimals: decimals) &&
      equalChannel1(b, decimals: decimals) &&
      equalChannel2(b, decimals: decimals) &&
      equalChannel3(b, decimals: decimals);

  bool sameModel(UniColor b) => model == b.model;

  void assertSameModel(UniColor b) {
    if (model != b.model) {
      throw ArgumentError('The color models should be same.'
          ' $model != ${b.model}');
    }
  }

  void assertArgbModel() {
    if (model == ColorModel.rgb) {
    } else {
      throw ArgumentError('The color models should be ARGB. `$model`');
    }
  }

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
