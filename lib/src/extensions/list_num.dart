part of '../../uni_color_model.dart';

/// TODO(sign): Separated package `numeric_collection`?
extension ListNumExt<T extends num> on List<T> {
  /// List R = List Ai - List Bi
  List<T> subtract(List<T> other) =>
      List.generate(length, (i) => (this[i] - other[i]) as T);

  /// R = List A0 + List A1 + ...
  T get summarize => reduce((a, b) => (a + b) as T);

  /// List R = List Ai ^ 2
  List<T> get square => List.generate(length, (i) => (this[i] * this[i]) as T);
}
