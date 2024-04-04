part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `int_color`? `bit_extractor`?
extension ColorModelIntExt on int {
  /// The value of the channel [n] from [int] when the channels have
  /// sizes [depth].
  /// [depth] should be in range [1; 64].
  /// [n] should be in range [0; 64].
  /// Multiply [n] * [depth] should be less or equal 53 for Web and 64 for others.
  /// [channels] How many channels we have. Range [1; 64]. Default value is 5
  /// because [UniColor] has 5 channels.
  /// [reverse] The first channel starts on the right side of the number.
  int channelFromIntDepth(
    int n,
    int depth, {
    int channels = 5,
    bool reverse = true,
  }) {
    final k = reverse ? channels - n - 1 : n;
    return (this >> (depth * k)) & fillWithOnesRight(depth);
  }

  /// ! Ignores out of range bits from left.
  int channelFromIntDepths(
    int n,
    List<int> depths, {
    bool reverse = true,
  }) {
    final ds = reverse ? depths : depths.reversed.toList(growable: false);
    final shift = ds.sublist(n + 1).summarize;
    final l = ds[n];
    return (this >> shift) & fillWithOnesRight(l);
  }

  List<int> unpackFromIntDepth(
    int depth, {
    bool reverse = true,
  }) {
    final r = switch (this) {
      == 0x00 => <int>[],
      <= 0xff => [
          channelFromIntDepth(0, depth),
        ],
      <= 0xffff => [
          channelFromIntDepth(0, depth),
          channelFromIntDepth(1, depth),
        ],
      <= 0xffffff => [
          channelFromIntDepth(0, depth),
          channelFromIntDepth(1, depth),
          channelFromIntDepth(2, depth),
        ],
      <= 0xffffffff => [
          channelFromIntDepth(0, depth),
          channelFromIntDepth(1, depth),
          channelFromIntDepth(2, depth),
          channelFromIntDepth(3, depth),
        ],
      <= 0xffffffffff => [
          channelFromIntDepth(0, depth),
          channelFromIntDepth(1, depth),
          channelFromIntDepth(2, depth),
          channelFromIntDepth(3, depth),
          channelFromIntDepth(4, depth),
        ],
      _ => throw ArgumentError('Supported int <= 0xffffffffff (5 bytes).'),
    };

    return reverse ? r : r.reversed.toList();
  }

  /// ! Ignores out of range bits from left.
  List<int> unpackFromIntDepths(
    List<int> depths, {
    bool reverse = true,
  }) {
    final l = depths.summarize;
    final mask = fillWithOnesRight(l);
    final v = this & mask;
    final r = switch (depths.length) {
      == 0 => <int>[],
      <= 1 => [
          v.channelFromIntDepths(0, depths),
        ],
      <= 2 => [
          v.channelFromIntDepths(0, depths),
          v.channelFromIntDepths(1, depths),
        ],
      <= 3 => [
          v.channelFromIntDepths(0, depths),
          v.channelFromIntDepths(1, depths),
          v.channelFromIntDepths(2, depths),
        ],
      <= 4 => [
          v.channelFromIntDepths(0, depths),
          v.channelFromIntDepths(1, depths),
          v.channelFromIntDepths(2, depths),
          v.channelFromIntDepths(3, depths),
        ],
      <= 5 => [
          v.channelFromIntDepths(0, depths),
          v.channelFromIntDepths(1, depths),
          v.channelFromIntDepths(2, depths),
          v.channelFromIntDepths(3, depths),
          v.channelFromIntDepths(4, depths),
        ],
      _ => throw ArgumentError('Supported int <= 0xffffffffff (5 bytes).'),
    };

    return reverse ? r : r.reversed.toList();
  }

  /// See [ColorModelListIntExt.packToInt8].
  List<int> get unpackFromInt8 => switch (this) {
        == 0x00 => <int>[],
        <= 0xff => [
            0xff & this,
          ],
        <= 0xffff => [
            0xff & (this >> 8),
            0xff & this,
          ],
        <= 0xffffff => [
            0xff & (this >> 16),
            0xff & (this >> 8),
            0xff & this,
          ],
        <= 0xffffffff => [
            0xff & (this >> 24),
            0xff & (this >> 16),
            0xff & (this >> 8),
            0xff & this,
          ],
        <= 0xffffffffff => [
            0xff & (this >> 32),
            0xff & (this >> 24),
            0xff & (this >> 16),
            0xff & (this >> 8),
            0xff & this,
          ],
        _ => throw ArgumentError('Supported int <= 0xffffffffff (5 bytes).'),
      };

  /// 2 ^ this
  int get pow2N => pow(2, this).round();

  /// Converts to hexadecimal [String] value with [n] padding left [filler].
  String hex([int n = 2, String filler = '0']) =>
      toRadixString(16).padLeft(n, filler);
}

/// [int] with filled [n] bits from right.
int fillWithOnesRight(int n) => (1 << n) - 1;
