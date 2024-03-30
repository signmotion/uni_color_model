part of '../../uni_color_model.dart';

/// Color with int 4 bits per channels.
/// This is what is known as "CGA, EGA, VGA" color.
/// See https://en.wikipedia.org/wiki/Color_depth#4-bit_color
class Int4Color extends UniColor<int> {
  const Int4Color({
    required super.model,
    super.channelPresentation,
    super.channel0,
    required super.channel1,
    required super.channel2,
    required super.channel3,
    super.index,
    super.name,
  }) : super(
          channelDepths: const [4, 4, 4, 4],
          channelRanges: const [
            (0, 15),
            (0, 15),
            (0, 15),
            (0, 15),
          ],
        );
}
