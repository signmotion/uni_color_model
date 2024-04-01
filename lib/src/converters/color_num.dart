part of '../../uni_color_model.dart';

extension ColorModelConverterNumExt on UniColor<num> {
  ArgbInt8Color get argbInt8Color => ArgbInt8Color(
        channelPresentation: channelPresentation,
        channel0: channel0?.round(),
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

  List<num?> get argbListNumBits => [channel0, channel1, channel2, channel3];

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

  List<num> get rgbListNumBits => [channel1, channel2, channel3];
}
