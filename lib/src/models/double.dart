part of '../../uni_color_model.dart';

/// Color with [double] values per channels.
class DoubleColor extends UniColor<double> {
  const DoubleColor({
    // can be percentage [0.0; 100.0] also
    super.channelRanges = const [
      (0.0, 1.0),
      (0.0, 1.0),
      (0.0, 1.0),
      (0.0, 1.0),
    ],
    required super.model,
    super.channelPresentation,
    super.channel0,
    required super.channel1,
    required super.channel2,
    required super.channel3,
    super.index,
    super.name,
  }) : super(
          // pointlessly for [double]
          channelDepths: const [0, 0, 0, 0],
        );
}
