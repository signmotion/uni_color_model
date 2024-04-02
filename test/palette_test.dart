import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('Palette - load from file', () {
    test('absent file', () {
      expect(
          () => UniPalette<int>.file(
                'test/data/palettes/absent_file.json',
                ColorModel.rgb,
              ),
          throwsA(isA<ArgumentError>()));
    });

    test('empty', () {
      expect(
          () => UniPalette<int>.file(
                'test/data/palettes/empty.json',
                ColorModel.rgb,
              ),
          throwsA(isA<ArgumentError>()));
    });

    test('1 color', () {
      expect(
          () => UniPalette<int>.file(
                'test/data/palettes/1_color.json',
                ColorModel.rgb,
              ),
          throwsA(isA<ArgumentError>()));
    });

    test('2 colors', () {
      final palette = UniPalette<num>.file(
        'test/data/palettes/black_white.json',
        ColorModel.rgb,
      );
      expect(palette.count, 2);
      expect(palette.list.first.rgbInt8StringIntHex, '000000');
      expect(palette.list.last.rgbInt8StringIntHex, 'ffffff');
    });

    test('grey_0_255', () {
      final palette = UniPalette<int>.file(
        'test/data/palettes/grey_0_255.json',
        ColorModel.rgb,
      );
      expect(palette.count, 256);
    });
  });
}
