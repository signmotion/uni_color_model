part of '../../uni_color_model.dart';

/// [List] doesn't know about the color representation:
/// the extension name interprets it
extension ColorModelListIntExt on List<int> {
  /// One channel has 8 bits.
  int get argbInt8ToArgbInt8 => ((0xff & this[0]) << 24 |
      (0xff & this[1]) << 16 |
      (0xff & this[2]) << 8 |
      (0xff & this[3]) << 0);

  /// Remove alpha.
  /// One channel has 8 bits.
  int get argbInt8ToRgbInt8 =>
      ((0xff & this[1]) << 16 | (0xff & this[2]) << 8 | (0xff & this[3]) << 0);
}
