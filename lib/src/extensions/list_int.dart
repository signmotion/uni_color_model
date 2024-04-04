part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `numeric_collection`?
extension ListIntExt on List<int> {
  /// List R = List Ai ~/ k
  List<int> divideInt(int k) => List.generate(length, (i) => this[i] ~/ k);
}

/// TODO(sign): Separated package `bit_coder`?
extension ColorModelListIntExt on List<int> {
  int get packToInt8 => switch (length) {
        0 => 0,
        1 => this[0],
        2 => (this[0] << 8) | this[1],
        3 => (this[0] << 16) | (this[1] << 8) | this[2],
        4 => (this[0] << 24) | (this[1] << 16) | (this[2] << 8) | this[3],
        5 => (this[0] << 32) |
            (this[1] << 24) |
            (this[2] << 16) |
            (this[3] << 8) |
            this[4],
        _ => throw UnsupportedError('Length should be less 6.'),
      };
}
