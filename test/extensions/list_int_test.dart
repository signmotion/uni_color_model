import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('packToInt8, correct values', () {
    test('0 elements', () {
      expect(<int>[].packToInt8, 0x00);
    });

    test('1 element', () {
      expect([0xde].packToInt8, 0xde);
    });

    test('2 elements', () {
      expect([0xde, 0x0a].packToInt8, 0xde0a);
    });

    test('3 elements', () {
      expect([0xde, 0x0a, 0x1b].packToInt8, 0xde0a1b);
    });

    test('4 elements', () {
      expect([0xde, 0x0a, 0x1b, 0x2c].packToInt8, 0xde0a1b2c);
    });

    test('5 elements', () {
      expect([0x6f, 0xde, 0x0a, 0x1b, 0x2c].packToInt8, 0x6fde0a1b2c);
    });

    test('5 elements with 4 bits each', () {
      expect([0xa, 0xb, 0xc, 0xd, 0xe].packToInt8, 0x0a0b0c0d0e);
    });
  });

  group('packToDepthAsList, correct values', () {
    const b = [0xff, 0x0f, 0x46, 0x01, 0xe2];

    test('empty list, 8 bits', () {
      expect(<int>[].packToDepthAsList(8), <int>[]);
    });

    test('3 bits', () {
      expect(b.packToDepthAsList(3), [0x7, 0x0, 0x2, 0x0, 0x6]);
    });

    test('4 bits', () {
      expect(b.packToDepthAsList(4), [0xf, 0x1, 0x4, 0x0, 0xd]);
    });

    test('8 bits', () {
      expect(b.packToDepthAsList(8), b);
    });

    test('10 bits', () {
      expect(b.packToDepthAsList(10), [1023, 60, 281, 4, 907]);
    });
  });

  group('packToDepth, correct values', () {
    const b = [0xff, 0x0f, 0x46, 0x01, 0xe2];

    test('empty list, 8 bits', () {
      expect(<int>[].packToDepth(8), 0x0);
    });

    test('3 bits', () {
      expect(b.packToDepth(3).hex(), '7086');
    });

    test('4 bits', () {
      expect([0xff].packToDepth(4), 0x0f);
      expect([0xff, 0xee].packToDepth(4).hex(), 'fe');
      expect([0xff, 0x99].packToDepth(4).hex(), 'f9');
      expect([0xff, 0x99, 0xaa].packToDepth(4).hex(), 'f9a');
      expect(b.packToDepth(4).hex(), 'f140d');
    });

    test('8 bits', () {
      expect(b.packToDepth(8).hex(), 'ff0f4601e2');
    });

    test('10 bits', () {
      expect(b.packToDepth(10).hex(), '3ff0f1190138b');
    });
  }, tags: ['current']);
}
