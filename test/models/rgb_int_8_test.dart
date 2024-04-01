import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('Mixins', () {
    final c = RgbInt8Color.rgb(0x0a, 0x1b, 0x2c);

    test('r', () {
      expect(c.r, 0x0a);
    });

    test('g', () {
      expect(c.g, 0x1b);
    });

    test('b', () {
      expect(c.b, 0x2c);
    });

    test('int24', () {
      expect(c.int24, 0x0a1b2c);
    });

    test('int24Hex', () {
      expect(c.int24Hex, '0a1b2c');
    });

    test('toString', () {
      expect('$c', '0a1b2c');
    });
  });
}
