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
  });
}
