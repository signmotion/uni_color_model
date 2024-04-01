part of '../../uni_color_model.dart';

/// All converters has a suffix `Color`.
extension ColorModelConverterNumExt on UniColor<num> {
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
}
