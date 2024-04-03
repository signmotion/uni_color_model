part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `int_color`?
extension ColorModelIntNExt on int {
  /// The zero channel of this color in an N bits value.
  int intBitsChannelNColor(int bits, int n) =>
      this >> (bits * (4 - n - 1)) & fillWithOnesRight(bits);

  /// [int] with filled [n] bits from right.
  int fillWithOnesRight(int n) => (1 << n) - 1;

  /// 2 ^ this
  int get pow2N => pow(2, this).round();
}
