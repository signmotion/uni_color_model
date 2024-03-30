part of '../../uni_color_model.dart';

extension ColorModelStringExt on String {
  /// The string with latin characters only.
  String get normalizedNameColor =>
      replaceAll(RegExp(r'[\W]+'), '').toLowerCase();
}
