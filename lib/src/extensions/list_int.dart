part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `numeric_collection`?
extension ListIntExt on List<int> {
  /// List R = List Ai ~/ k
  List<int> divideInt(int k) => List.generate(length, (i) => this[i] ~/ k);
}

/// TODO(sign): Separated package `bit_coder`?
extension ColorModelListIntExt on List<int> {
  int get packToInt8 => switch (length) {
        0 => 0x00,
        1 => (0xff & this[0]),
        2 => ((0xff & this[0]) << 8) | (0xff & this[1]),
        3 =>
          ((0xff & this[0]) << 16) | ((0xff & this[1]) << 8) | (0xff & this[2]),
        4 => ((0xff & this[0]) << 24) |
            ((0xff & this[1]) << 16) |
            ((0xff & this[2]) << 8) |
            (0xff & this[3]),
        5 => ((0xff & this[0]) << 32) |
            ((0xff & this[1]) << 24) |
            ((0xff & this[2]) << 16) |
            ((0xff & this[3]) << 8) |
            (0xff & this[4]),
        _ => throw ArgumentError('Length should be 5 or less.'),
      };
}
