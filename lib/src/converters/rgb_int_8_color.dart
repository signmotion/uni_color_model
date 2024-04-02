part of '../../uni_color_model.dart';

/// Converters for [UniColor<num>].
extension ColorModelConverterRgbInt8ColorExt on RgbInt8Color {
  /// ARGB
  /// ! Adds `0xff` to alpha.
  int get argbInt8 => (this as UniColor<int>).argbInt8;

  /// ! Adds `0xff` to alpha.
  ArgbInt8Color get argbInt8Color => (this as UniColor<int>).argbInt8Color;

  /// ! Adds `0xff` to alpha.
  List<int> get argbInt8ListIntBits =>
      (this as UniColor<int>).argbInt8ListIntBits;

  String get argbInt8StringIntHex =>
      (this as UniColor<int>).argbInt8StringIntHex;

  /// RGB
  int get rgbInt8 => (this as UniColor<int>).rgbInt8;

  RgbInt8Color get rgbInt8Color => (this as UniColor<int>).rgbInt8Color;

  List<int> get rgbInt8ListIntBits =>
      (this as UniColor<int>).rgbInt8ListIntBits;

  String get rgbInt8StringIntHex => (this as UniColor<int>).rgbInt8StringIntHex;
}
