part of '../../uni_color_model.dart';

/// Color with int 8 bits per channels.
/// This is what is known as "true color".
/// See https://en.wikipedia.org/wiki/Color_depth#True_color_(24-bit)
class Int8Color extends NumColor<int> {
  const Int8Color({
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
  }) : super(
          channelDepths: const [8, 8, 8, 8],
          channelRanges: const [
            (0, 255),
            (0, 255),
            (0, 255),
            (0, 255),
          ],
        );
}
