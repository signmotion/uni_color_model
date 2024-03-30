part of '../../uni_color_model.dart';

// /// An access to color as CMYK model.
// extension ColorNameCmykUniColorExt<T> on UniColor<T> {
//   T get cyan => $2;
//   T get magenta => $3;
//   T get yellow => $4;
// }

// /// An access to color as HSL model.
// extension ColorNameHslUniColorExt<T> on UniColor<T> {
//   T get hue => $2;
//   T get saturation => $3;
//   T get lightness => $4;
// }

// /// An access to color as ARGB model.
// extension ColorNameArgbUniColorExt<T> on UniColor<T> {
//   T get alpha => $2;
//   T get red => $3;
//   T get green => $4;
//   T get blue => $5;
// }

// /// An access to color as XYZ model.
// extension ColorNameXyzUniColorExt<T> on UniColor<T> {
//   T get x => $2;
//   T get y => $3;
//   T get z => $4;
// }

// /// A simple arithmetic.
// extension ColorNameMathUniColorExt<T extends num> on UniColor<T> {
//   UniColor<T> add(UniColor<T> b) {
//     assertSameModel(b);
//     assertArgbModel();
//     return (
//       $1,
//       ($2 + b.$2) as T,
//       ($3 + b.$3) as T,
//       ($4 + b.$4) as T,
//       ($5 + b.$5) as T,
//     );
//   }

//   UniColor<T> mulpiply(UniColor<T> b) {
//     assertSameModel(b);
//     assertArgbModel();
//     return (
//       $1,
//       ($2 * b.$2) as T,
//       ($3 * b.$3) as T,
//       ($4 * b.$4) as T,
//       ($5 * b.$5) as T,
//     );
//   }

//   UniColor<T> subtract(UniColor<T> b) {
//     assertSameModel(b);
//     assertArgbModel();
//     return (
//       $1,
//       ($2 - b.$2) as T,
//       ($3 - b.$3) as T,
//       ($4 - b.$4) as T,
//       ($5 - b.$5) as T,
//     );
//   }

//   /// this ^ 2
//   UniColor<T> get square => (
//         $1,
//         ($2 * $2) as T,
//         ($3 * $3) as T,
//         ($4 * $4) as T,
//         ($5 * $5) as T,
//       );

//   /// channel 1 + channel 2 + channel 3 + channel 4
//   T get summarize => ($2 + $3 + $4 + $5) as T;
// }

// /// The checkers.
// extension ColorNameCheckUniColorExt<T> on UniColor<T> {
//   bool sameModel(UniColor<T> b) => model == b.model;

//   void assertSameModel(UniColor<T> b) {
//     if (model != b.model) {
//       throw ArgumentError('The color models should be same.'
//           ' $model != ${b.model}');
//     }
//   }

//   void assertArgbModel() {
//     if (model == ColorModel.rgb) {
//     } else {
//       throw ArgumentError('The color models should be ARGB. `$model`');
//     }
//   }
// }

// /// A template for naming convertors:
// /// `color[SourceModel]To[Structure][ResultModel]()`
// extension ColorNameUniColorExt<T> on UniColor<T> {
//   /// Access to model.
//   ColorModel get model => $1;

//   /// See [ColorNameUniColorDoubleExt.withAlpha],
//   /// [ColorNameUniColorIntExt.withAlpha].
//   UniColorNoAlpha<T> get noAlpha => (model, $3, $4, $5);

//   /// See [ColorNameUniColorShortExt.withModel].
//   UniColorShort<T> get noModel => ($2, $3, $4, $5);

//   List<T> get colorToList => [$2, $3, $4, $5];

//   String get colorArgbToStringArgb => switch (this) {
//         UniColor<int> c => c.colorArgbToInt8Argb.colorArgbToStringArgb,
//         UniColor<double> c =>
//           c.colorToScaledIntKColor(255).colorArgbToStringArgb,
//         UniColor<String> c => '${c.alpha.padLeft(2, '0')}'
//             '${c.red.padLeft(2, '0')}'
//             '${c.green.padLeft(2, '0')}'
//             '${c.blue.padLeft(2, '0')}',
//         _ => throw ArgumentError(),
//       };

//   /// Round by defined decimal places.
//   UniColor<double> colorToRoundDecimals(int decimals) => switch (this) {
//         UniColor<double> c => c.colorToRoundDecimals(decimals),
//         UniColor<int> c => c.colorToUniColorDouble,
//         UniColor<String> c => throw UnimplementedError('$c'),
//         _ => throw UnsupportedError('$runtimeType'),
//       };
// }

// /// A template for naming convertors:
// /// `color[SourceModel]To[Structure][ResultModel]()`
// extension ColorNameUniColorDoubleExt on UniColor<double> {
//   // TODO(sign): C convertToModel<C>(ColorModel model) => ...

//   /// Round to [UniColor] integers.
//   UniColor<int> get colorToRound => (
//         model,
//         $2.roundToDecimals(0).round(),
//         $3.roundToDecimals(0).round(),
//         $4.roundToDecimals(0).round(),
//         $5.roundToDecimals(0).round(),
//       );

//   /// Round by defined decimal places.
//   UniColor<double> colorToRoundDecimals(int decimals) => decimals < 0
//       ? this
//       : (
//           model,
//           $2.roundToDecimals(decimals),
//           $3.roundToDecimals(decimals),
//           $4.roundToDecimals(decimals),
//           $5.roundToDecimals(decimals),
//         );

//   /// Multiply by [k].
//   UniColor<int> colorToScaledIntKColor(int k) =>
//       (model, $2 * k, $3 * k, $4 * k, $5 * k).colorToRound;

//   /// Divide by [k].
//   UniColor<double> colorToScaleDoubleColor(double k, [int decimals = 0]) =>
//       (model, $2 / k, $3 / k, $4 / k, $5 / k).colorToRoundDecimals(decimals);

//   /// Convert to [UniColor] integers [0; 255].
//   UniColor<int> get colorArgbToUniColorInt8Argb => colorToScaledIntKColor(255);

//   int get colorArgbToInt8Argb =>
//       colorArgbToUniColorInt8Argb.colorArgbToInt8Argb;
// }

// /// A template for naming convertors:
// /// `color[SourceModel]To[Structure][ResultModel]()`
// extension ColorNameUniColorIntExt on UniColor<int> {
//   UniColor<int> withAlpha([int alpha = 255]) => (model, alpha, $3, $4, $5);

//   /// Divide by [k].
//   UniColor<double> colorToScaleDoubleColor(double k, [int decimals = 0]) =>
//       (model, $2 / k, $3 / k, $4 / k, $5 / k).colorToRoundDecimals(decimals);

//   /// Convert to [UniColor] doubles.
//   UniColor<double> get colorToUniColorDouble => (
//         model,
//         $2.toDouble(),
//         $3.toDouble(),
//         $4.toDouble(),
//         $5.toDouble(),
//       );

//   int get colorArgbToInt8Argb => colorToList.colorArgbToInt8Argb;

//   /// Returns a 1-dimension index for the channels range [0; 255].
//   int get index256 => $2 << 0 | $3 << 8 | $4 << 16 | $5 << 24;
// }

// extension ColorNameUniColorNoAlphaExt<T> on UniColorNoAlpha<T> {
//   /// See [ColorNameUniColorShortExt.withModel].
//   UniColorShortNoAlpha<T> get noModel => ($2, $3, $4);
// }

// extension ColorNameUniColorNoAlphaDoubleExt on UniColorNoAlpha<double> {
//   UniColor<double> withAlpha([double alpha = 1.0]) => ($1, alpha, $2, $3, $4);
// }

// extension ColorNameUniColorNoAlphaIntExt on UniColorNoAlpha<int> {
//   UniColor<int> withAlpha([int alpha = 255]) => ($1, alpha, $2, $3, $4);
// }

// extension ColorNameUniColorShortExt<T> on UniColorShort<T> {
//   /// See [ColorNameUniColorExt.noModel].
//   UniColor<T> withModel(ColorModel model) => (model, $1, $2, $3, $4);
// }

// extension ColorNameUniColorShortNoAlphaDoubleExt
//     on UniColorShortNoAlpha<double> {
//   UniColorShort<double> withAlpha([double alpha = 1.0]) => (alpha, $1, $2, $3);
// }

// extension ColorNameUniColorShortNoAlphaIntExt on UniColorShortNoAlpha<int> {
//   UniColorShort<int> withAlpha([int alpha = 255]) => (alpha, $1, $2, $3);
// }

// extension ColorNameListExt<T> on List<T> {
//   UniColorShort<T> get colorArgbToUniColorShort => (
//         this[0],
//         this[1],
//         this[2],
//         this[3],
//       );

//   UniColor<T> get colorArgbToUniColorArgb => (
//         ColorModel.rgb,
//         this[0],
//         this[1],
//         this[2],
//         this[3],
//       );
// }

// extension ColorNameListIntExt on List<int> {
//   /// One channel has 8 bits.
//   int get colorArgbToInt8Argb =>
//       ((0xff & this[0]) << 24 |
//           (0xff & this[1]) << 16 |
//           (0xff & this[2]) << 8 |
//           (0xff & this[3]) << 0) &
//       0xFFFFFFFF;
// }

// extension ColorNameIntExt on int {
//   /// The first (alpha in ARGB model) channel of this color in an 8 bit value.
//   int get colorChannel1 => (0xff000000 & this) >> 24;

//   /// The second (red in ARGB model) channel of this color in an 8 bit value.
//   int get colorChannel2 => (0x00ff0000 & this) >> 16;

//   /// The third (green in ARGB model) channel of this color in an 8 bit value.
//   int get colorChannel3 => (0x0000ff00 & this) >> 8;

//   /// The fourth (blue in ARGB model) channel of this color in an 8 bit value.
//   int get colorChannel4 => (0x000000ff & this) >> 0;

//   UniColor<T> colorArgbToUniColorArgb<T>() =>
//       colorArgbToUniColorShort<T>().withModel(ColorModel.rgb);

//   UniColorShort<T> colorArgbToUniColorShort<T>() => (
//         colorChannel1 as T,
//         colorChannel2 as T,
//         colorChannel3 as T,
//         colorChannel4 as T,
//       );

//   String get colorArgbToStringArgb => toRadixString(16).padLeft(8, '0');

//   String get colorArgbToStringRgb =>
//       colorArgbToRgb.toRadixString(16).padLeft(6, '0');

//   int get colorArgbToRgb => this & 0xffffff;
// }
