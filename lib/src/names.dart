part of '../uni_color_model.dart';

/// Names in different languages.
class Names {
  const Names(this.map);

  /// Combine (zip) names as [languageCodes] : [names].
  factory Names.rays(
    List<String> languageCodes,
    List<String> names,
  ) =>
      Names({
        for (var i = 0; i < names.length; ++i)
          if (names[i].isNotEmpty) languageCodes[i]: names[i],
      });

  /// <language code, name>
  final Map<String, String> map;

  /// A name by [languageCode].
  String? operator [](String languageCode) => map[languageCode];
}
