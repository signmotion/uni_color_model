import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

/// Constructing from [int] value.
void main() {
  // ACMYK color
  const c = 0x6fde0a1b2c;
  // bin 000000000110111111011110000010100001101100101100

  group('Correct, ACMYK model', () {
    test('acmyk', () {
      final r = c.acmyk;
      expect(r.model, ColorModel.cmyk);
      expect(r.hasAlpha, isTrue);
      expect(r.channels, [0x6f, 0xde, 0x0a, 0x1b, 0x2c]);
    });

    test('acmykWith, depths for channels: equal 4', () {
      final r = c.acmykWith(depth: 4);
      expect(r.channels, [0x0a, 0x01, 0x0b, 0x02, 0x0c]);
    });

    test('acmykWith, depths for channel: equal 8', () {
      final r = c.acmykWith(depth: 8);
      expect(r.channels, [0x6f, 0xde, 0x0a, 0x1b, 0x2c]);
    });

    test('acmykWith, depths for channels: equal 12', () {
      // bin 000000000110 111111011110 000010100001 101100101100
      final r = c.acmykWith(depth: 12);
      expect(r.channels, [
        0x00,
        int.tryParse('000000000110', radix: 2),
        int.tryParse('111111011110', radix: 2),
        int.tryParse('000010100001', radix: 2),
        int.tryParse('101100101100', radix: 2),
      ]);
    });

    test('acmykWith, depths for channels: 2:3:4:5:6', () {
      // bin 0000000001101111110111100000 10 100 0011 01100 101100
      final r = c.acmykWith(depths: [2, 3, 4, 5, 6]);
      expect(r.channels, [
        int.tryParse('10', radix: 2),
        int.tryParse('100', radix: 2),
        int.tryParse('0011', radix: 2),
        int.tryParse('01100', radix: 2),
        int.tryParse('101100', radix: 2),
      ]);
    });
  }, tags: ['current']);
}
