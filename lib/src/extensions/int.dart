part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `int_color`?
extension ColorModelIntExt on int {
  /// The value of the channel [n] from [int] when the channels have
  /// sizes [bits].
  /// [bits] should be in range [1; 64].
  /// [n] should be in range [0; 64].
  /// Multiply [n] * [bits] should be less or equal 53 for Web and 64 for others.
  /// [channels] How many channels we have. Range [1; 64]. Default value is 5
  /// because [UniColor] has 5 channels.
  /// [reverse] The first channel starts on the right side of the number.
  int intBitsChannelNColor(
    int bits,
    int n, {
    int channels = 5,
    bool reverse = true,
  }) {
    final k = reverse ? channels - n - 1 : n;
    return (this >> (bits * k)) & fillWithOnesRight(bits);
  }

  /// 2 ^ this
  int get pow2N => pow(2, this).round();

  /// Converts to hexadecimal [String] value with [n] padding left [filler].
  String hex([int n = 2, String filler = '0']) =>
      toRadixString(16).padLeft(n, filler);
}

/// [int] with filled [n] bits from right.
int fillWithOnesRight(int n) => (1 << n) - 1;
