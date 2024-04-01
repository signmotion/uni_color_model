import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('int 8', () {
    const c = 0x0a1b2c;

    test('argbInt8Color', () {
      expect(
          c.argbInt8Color,
          const ArgbInt8Color(
            channel0: 0xff,
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('argbInt8ToArgbListInt8Color', () {
      expect(c.argbInt8ToArgbInt8ListIntBits, [0x00, 0x0a, 0x1b, 0x2c]);
    });

    test('argbInt8ToArgbStringHexInt8Color', () {
      expect(c.argbInt8ToArgbInt8StringIntHex, '000a1b2c');
    });

    test('argbInt8ToRgbStringHexInt8Color', () {
      expect(c.argbInt8ToRgbInt8StringIntHex, '0a1b2c');
    });

    test('rgbInt8Color', () {
      expect(
          c.rgbInt8Color,
          const RgbInt8Color(
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('rgbInt8ToArgbListInt8Color', () {
      expect(c.rgbInt8ToArgbInt8ListIntBits, [0xff, 0x0a, 0x1b, 0x2c]);
    });

    test('rgbInt8ToArgbStringHexInt8Color', () {
      expect(c.rgbInt8ToArgbInt8StringIntHex, 'ff0a1b2c');
    });

    test('rgbInt8ToRgbStringHexInt8Color', () {
      expect(c.rgbInt8ToRgbInt8StringIntHex, '0a1b2c');
    });
  });
}
