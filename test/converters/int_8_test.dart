import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  // TODO(sign): const a = 0xde0a1b2c;
  const b = 0x0a1b2c;

  group('ARGB int 8 -> ARGB int 8', () {
    test('argbInt8', () {
      expect(b.argbInt8, 0x0a1b2c);
    });

    test('argbInt8ToArgbInt8Color', () {
      expect(
          b.argbInt8ToArgbInt8Color,
          ArgbInt8Color(
            channel0: 0x00,
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('argbInt8ToArgbInt8ListIntBits', () {
      expect(b.argbInt8ToArgbInt8ListIntBits, [
        0x00,
        0x0a,
        0x1b,
        0x2c,
      ]);
    });

    test('argbInt8ToArgbInt8StringIntHex', () {
      expect(b.argbInt8ToArgbInt8StringIntHex, '000a1b2c');
    });
  });

  group('ARGB int 8 -> RGB int 8', () {
    test('argbInt8ToRgbInt8', () {
      expect(b.argbInt8ToRgbInt8, 0x0a1b2c);
    });

    test('argbInt8ToRgbInt8ListIntBits', () {
      expect(b.argbInt8ToRgbInt8ListIntBits, [
        0x0a,
        0x1b,
        0x2c,
      ]);
    });

    test('argbInt8ToRgbInt8StringIntHex', () {
      expect(b.argbInt8ToRgbInt8StringIntHex, '0a1b2c');
    });
  });

  group('RGB int 8 -> ARGB int 8', () {
    test('rgbInt8ToArgbInt8Color', () {
      expect(
          b.rgbInt8ToArgbInt8Color,
          ArgbInt8Color(
            channel0: 0xff,
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('rgbInt8ToArgbInt8', () {
      expect(b.rgbInt8ToArgbInt8, 0xff0a1b2c);
    });

    test('rgbInt8ToArgbInt8ListIntBits', () {
      expect(b.rgbInt8ToArgbInt8ListIntBits, [
        0xff,
        0x0a,
        0x1b,
        0x2c,
      ]);
    });

    test('rgbInt8ToArgbInt8StringIntHex', () {
      expect(b.rgbInt8ToArgbInt8StringIntHex, 'ff0a1b2c');
    });
  });

  group('RGB int 8 -> RGB int 8', () {
    test('rgbInt8', () {
      expect(b.rgbInt8, 0x0a1b2c);
    });

    test('rgbInt8ToRgbInt8Color', () {
      expect(
          b.rgbInt8ToRgbInt8Color,
          RgbInt8Color(
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('rgbInt8ToRgbInt8ListIntBits', () {
      expect(b.rgbInt8ToRgbInt8ListIntBits, [
        0x0a,
        0x1b,
        0x2c,
      ]);
    });

    test('rgbInt8ToRgbInt8StringIntHex', () {
      expect(b.rgbInt8ToRgbInt8StringIntHex, '0a1b2c');
    });
  });
}
