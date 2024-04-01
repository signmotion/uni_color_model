part of '../../uni_color_model.dart';

/// Color with int 10 bits per channels.
/// This is what is known as "deep color".
/// See https://en.wikipedia.org/wiki/Color_depth#Deep_color_(30-bit)
class Int10Color extends NumColor<int> {
  const Int10Color({
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
          channelDepths: const [10, 10, 10, 10],
          channelRanges: const [
            (0, 1023),
            (0, 1023),
            (0, 1023),
            (0, 1023),
          ],
        );
}
