part of '../../uni_color_model.dart';

extension ColorModelConverterColorInt8Ext on UniColor<int> {
  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channel0: channel0 ?? 0xff,
        channel1: channel1,
        channel2: channel2,
        channel3: channel3,
      );

  /// ! Adds `0xff` if an alpha is empty (the int less than 24 bits).
  List<int> get argbListIntBits => [
        channel0 ?? 0xff,
        channel1,
        channel2,
        channel3,
      ];

  RgbInt8Color get rgbInt8Color => RgbInt8Color(
        channelPresentation: channelPresentation,
        channel1: channel1,
        channel2: channel2,
        channel3: channel3,
        code: code,
        index: index,
        defaultLanguage: defaultLanguage,
        name: name,
        names: names,
        group: group,
      );

  List<int> get rgbListIntBits => [channel1, channel2, channel3];
}
