part of '../../uni_color_model.dart';

/// Color with [double] values per channels.
class DoubleColor extends NumColor<double> {
  const DoubleColor({
    // can be percentage [0.0; 100.0] also
    super.channelRanges = const [
      (0.0, 1.0),
      (0.0, 1.0),
      (0.0, 1.0),
      (0.0, 1.0),
      (0.0, 1.0),
    ],
    required super.model,
    super.channelPresentation,
    required super.hasAlpha,
    required super.channels,
    super.index,
    super.code,
    super.defaultLanguage,
    super.name,
    super.names,
    super.group,
  }) : super(
          // pointlessly for [double]
          channelDepths: const [0, 0, 0, 0, 0],
        );
}
