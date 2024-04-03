# Changelog

All notable changes to the project `UniColorModel` will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 0.2.0

- Provided converters and extractors for `UniColor<int>`.
- Provided name, license and source to `UniPalette`.
- Implemented `RgbColor`.
- Introduced `channel4` for representation CMYK and ACMYK model.
- Introduced `UniColor<num>` for generalization the colors with `int` and `double` channels.
- Introduced interfaces and mixins for color models. All tests passed.
- Introduced `UniColor.copyWith()`. Refactoring.
- `normalizedNameColor` without special symbols.

- Moved `UniColor` converter to extension.
- Moved some TODOs to the project [UniColorPalette](https://github.com/signmotion/uni_color_palette).

- Updated a thoughts about color converters in `README`.
- Introduced a tone `num bits`. See `README`.
- Standardaized the names for color converters.
- Noted converters and extractors.

- Optimized `RgbInt8ColorMix.int24`.
- Optimized `argbInt8ToArgbInt8` and `argbInt8ToRgbInt8` for `List<int>`.

- Fixed mathematics operations for `UniColor`.

- Removed the color classes for bit depths `int 4` and `int 10`. Reason: Avoid unnecessary duplication during the development phase of converters.
- Restricted a `null` for `ArgbInt8Color.argb()` factory.

- Upgraded dependencies.

- Provided 50+ tests.

## 0.1.0

- Initial release. Separated from [UniColorName](https://github.com/signmotion/uni_color_name).
