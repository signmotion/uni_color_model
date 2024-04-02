part of '../../uni_color_model.dart';

/// Converters for [UniColor<num>].
extension ColorModelConverterColorNumExt<T extends num> on UniColor<T> {
  /// ARGB
  /// ! Adds `0xff` to alpha.
  int get argbInt8 =>
      (0xff & (channel0?.round() ?? 0xff)) << 24 |
      (0xff & channel1.round()) << 16 |
      (0xff & channel2.round()) << 8 |
      (0xff & channel3.round()) << 0;

  /// ! Adds `0xff` to alpha.
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channelPresentation: channelPresentation,
        channel0: (channel0?.round() ?? 0xff),
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

  /// ! Adds `0xff` to alpha.
  List<T> get argbInt8ListIntBits => [
        (channel0 ?? 0xff) as T,
        channel1,
        channel2,
        channel3,
      ];

  String get argbInt8StringIntHex => argbInt8.argbInt8ToArgbInt8StringIntHex;

  /// RGB
  int get rgbInt8 =>
      (0xff & channel1.round()) << 16 |
      (0xff & channel2.round()) << 8 |
      (0xff & channel3.round()) << 0;

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

  List<T> get rgbInt8ListIntBits => [
        channel1,
        channel2,
        channel3,
      ];

  String get rgbInt8StringIntHex => rgbInt8Color.int24Hex;
}
