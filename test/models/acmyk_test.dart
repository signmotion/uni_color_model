import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('Correct values', () {
    final c = 0x6fde0a1b2c.acmyk;

    test('a', () {
      expect(c.a, 0x6f);
    });

    test('c', () {
      expect(c.c, 0xde);
    });

    test('m', () {
      expect(c.m, 0x0a);
    });

    test('y', () {
      expect(c.y, 0x1b);
    });

    test('k', () {
      expect(c.k, 0x2c);
    });
  });
}
