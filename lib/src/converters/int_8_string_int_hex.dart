part of '../../uni_color_model.dart';

/// Converters for int 8 [String] hex.
extension ColorModelConverterInt8StringIntHexExt on String {
  /// ARGB
  int get argbInt8 {
    var hexColor = replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = '00$hexColor';
    }
    if (hexColor.length != 8) {
      throw ArgumentError(this);
    }

    return int.parse('0x$hexColor');
  }

  ArgbInt8Color get argbInt8ToArgbInt8Color => ArgbInt8Color.argb(
        int8Channel0Color,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );

  List<int> get argbInt8ToArgbInt8ListIntBits => [
        int8Channel0Color,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get argbInt8ToArgbInt8StringIntHex => replaceAll('#', '');

  int get argbInt8ToRgbInt8 => rgbInt8;

  List<int> get argbInt8ToRgbInt8ListIntBits => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get argbInt8ToRgbInt8StringIntHex => argbInt8ToRgbInt8.hex(6);

  /// RGB
  int get rgbInt8 {
    final hexColor = replaceAll('#', '');
    if (hexColor.length != 6) {
      throw ArgumentError(this);
    }

    return int.parse('0x$hexColor');
  }

  /// ! Adds `0xff` to alpha.
  ArgbInt8Color get rgbInt8ToArgbInt8Color => ArgbInt8Color.argb(
        0xff,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );

  /// ! Adds `0xff` to alpha if absent.
  int get rgbInt8ToArgbInt8 => rgbInt8ToArgbInt8Color.argbInt8;

  /// ! Adds `0xff` to alpha.
  List<int> get rgbInt8ToArgbInt8ListIntBits => [
        0xff,
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  /// ! Adds `0xff` to alpha.
  String get rgbInt8ToArgbInt8StringIntHex => rgbInt8ToArgbInt8.hex(8);

  RgbInt8Color get rgbInt8ToRgbInt8Color => RgbInt8Color.rgb(
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      );
  List<int> get rgbInt8ToRgbInt8ListIntBits => [
        int8Channel1Color,
        int8Channel2Color,
        int8Channel3Color,
      ];

  String get rgbInt8ToRgbInt8StringIntHex => replaceAll('#', '');
}
