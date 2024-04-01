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
      expect(c.argbInt8ToArgbListInt8Color, [0x00, 0x0a, 0x1b, 0x2c]);
    });

    test('argbInt8ToArgbStringHexInt8Color', () {
      expect(c.argbInt8ToArgbStringHexInt8Color, '000a1b2c');
    });

    test('argbInt8ToRgbStringHexInt8Color', () {
      expect(c.argbInt8ToRgbStringHexInt8Color, '0a1b2c');
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

    test('rgbInt8ToRgbListInt8Color', () {
      expect(c.rgbInt8ToRgbListInt8Color, [0x0a, 0x1b, 0x2c]);
    });

    test('rgbInt8ToRgbStringHexInt8Color', () {
      expect(c.rgbInt8ToRgbStringHexInt8Color, '0a1b2c');
    });
  });
}
