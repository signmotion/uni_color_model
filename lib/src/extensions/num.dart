part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `int_color`?
extension ColorModelNumExt on num {
  /// See [ColorModelIntExt.hex]
  String hex([int n = 2, String filler = '0']) => round().hex(n, filler);
}
