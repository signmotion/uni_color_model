part of '../../uni_color_model.dart';

/// [String] doesn't know about the color representation:
/// the extension name interprets it
extension ColorModelStringExt on String {
  /// The string with latin characters and decimal digits only.
  String get normalizedNameColor =>
      replaceAll(RegExp(r'[\W_]+'), '').trim().toLowerCase();
}
