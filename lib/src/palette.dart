part of '../uni_color_model.dart';

/// A palette with colors [UniColor].
/// See structures into the `README`.
/// [T] is a type of [UniColor].
abstract class Palette<T> {
  /// ! [map] should contains 1 model.
  const Palette(this.list) : assert(list.length > 1);

  /// List of all colors [C].
  final List<UniColor<T>> list;

  ColorModel get model => list.first.model;

  /// Number of colors.
  int get count => list.length;

  /// Color [C] by name.
  UniColor<T>? operator [](String colorName) =>
      list.firstWhereOrNull((c) => c.hasName && c.name == colorName);
}

/// The universal palette for represent any color as a [UniColor]-typed value.
/// Adding an alpha when absent.
/// [T] is a type of [UniColor].
class UniPalette<T> extends Palette<T> {
  UniPalette(super.list);

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
      return pc.argbInt8ToRgbInt8Color;
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
}
