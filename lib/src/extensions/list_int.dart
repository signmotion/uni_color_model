part of '../../uni_color_model.dart';

extension ColorModelListIntExt on List<int> {
  /// One channel has 8 bits.
  int get argbInt8ToArgbInt8 =>
      ((0xff & this[0]) << 24 |
          (0xff & this[1]) << 16 |
          (0xff & this[2]) << 8 |
          (0xff & this[3]) << 0) &
      0xffffffff;

  /// Remove alpha.
  /// One channel has 8 bits.
  int get argbInt8ToRgbInt8 =>
      ((0xff & this[1]) << 16 | (0xff & this[2]) << 8 | (0xff & this[3]) << 0) &
      0xffffffff;
}
