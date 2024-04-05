part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `numeric_collection`?
extension ListIntExt on List<int> {
  /// List R = List Ai ~/ k
  List<int> divideInt(int k) => List.generate(length, (i) => this[i] ~/ k);
}

/// TODO(sign): Separated package `bit_coder`?
/// See [ColorModelIntExt.unpackFromInt8].
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

  // TODO(sign): optimize? Own code with fixed depth.
  int packToDepth(int depth) =>
      depth == 8 ? packToInt8 : packToDepths(List.filled(length, depth));

  int packToDepths(List<int> depths) {
    final normalizedToBits = packToDepthsAsList(depths);

    var r = 0;
    var shift = 0;
    for (var i = normalizedToBits.length - 1; i >= 0; --i) {
      final l = depths[i];
      final mask = fillWithOnesRight(l);
      r |= ((mask & normalizedToBits[i]) << shift);
      shift += l;
    }

    return r;
  }

  List<int> packToDepthAsList(int depth) =>
      packToDepthsAsList(List.filled(length, depth));

  List<int> packToDepthsAsList(List<int> depths) {
    final norm = normalized;

    return [
      for (var i = 0; i < norm.length; ++i)
        (norm[i] * (depths[i].pow2N - 1)).round(),
    ];
  }

  /// Normalized to range [0.0; 1.0] with max value from this list.
  List<double> get normalized => isEmpty ? [] : normalizedWith(max: max);

  /// Normalized to range [0.0; max].
  List<double> normalizedWith({int? depth, int? max}) {
    assert(depth != null || max != null);
    assert((depth == null && max != null) || (depth != null && max == null));

    final d = depth ?? 8;
    final m = max ?? d.pow2N - 1;

    return m == 0 ? List.filled(length, 0.0) : [for (final v in this) v / m];
  }
}
