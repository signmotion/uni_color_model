part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `int_color`?
extension ColorModelIntBitsExt on int {
  /// The value of the channel [n] from [int] when the channels have
  /// sizes [bits].
  /// [bits] should be in range [1; 64].
  /// [n] should be in range [0; 4]. Cap because [UniColor] has 5 channels.
  /// Multiply [n] * [bits] should be less or equal 53 for Web and 64 for others.
  int intBitsChannelNColor(int bits, int n) =>
      (this >> (bits * (5 - n - 1))) & fillWithOnesRight(bits);

  /// 2 ^ this
  int get pow2N => pow(2, this).round();
}

/// [int] with filled [n] bits from right.
int fillWithOnesRight(int n) => (1 << n) - 1;
