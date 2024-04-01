part of '../uni_color_model.dart';

/// A palette with colors [UniColor].
/// See structures into the `README`.
/// [T] is a type for [UniColor].
class UniPalette<T> {
  const UniPalette(
    this.list, {
    this.name = '',
    this.license = '',
    this.source = '',
  }) : assert(list.length > 1, 'The palette must contain 2 or more colors.');

  /// Constructing from [File].
  /// See [UniPalette.iterable].
  factory UniPalette.file(
    String path,
    ColorModel model, {
    List<int> channelDepths = const [8, 8, 8, 8],
  }) {
    if (model != ColorModel.rgb) {
      throw UnimplementedError('$model');
    }
    if (channelDepths != const [8, 8, 8, 8]) {
      throw UnimplementedError('Channel depths `$channelDepths`.');
    }

    final l = WFile(path).readAsJsonListListT<int>();
    if (l == null) {
      throw ArgumentError('The file `$path` not found.');
    }

    final list = l.map((c) {
      final hasAlpha = c.length == 4;
      final pc = hasAlpha ? c : [0xff, ...c];
      return pc.argbInt8ToRgbInt8;
    });

    return UniPalette.iterableInt(list, model);
  }

  /// Constructing from [Iterable<int>].
  factory UniPalette.iterableInt(
    Iterable<int> iterable,
    ColorModel model, {
    List<int> channelDepths = const [8, 8, 8, 8],
  }) {
    if (model != ColorModel.rgb) {
      throw UnimplementedError('$model');
    }
    if (channelDepths != const [8, 8, 8, 8]) {
      throw UnimplementedError('Channel depths `$channelDepths`.');
    }

    if (iterable.length < 2) {
      throw ArgumentError('The palette should contain 2 or more colors.'
          ' We have: ${iterable.length} $iterable');
    }

    final list =
        [for (final v in iterable) v.argbInt8Color] as List<UniColor<T>>;

    return UniPalette(list);
  }

  /// Name of palette.
  final String name;

  /// License of palette.
  final String license;

  /// Source of palette.
  final String source;

  /// List of all colors.
  final List<UniColor<T>> list;

  ColorModel get model => list.first.model;

  /// Number of colors.
  int get count => list.length;

  /// Color by name.
  UniColor<T>? operator [](String colorName) =>
      list.firstWhereOrNull((c) => c.hasName && c.name == colorName);

  @override
  String toString() => 'Palette "$name" contains $count colors.';
}
