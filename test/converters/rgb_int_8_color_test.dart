import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  final c = RgbInt8Color.rgb(0x0a, 0x1b, 0x2c);

  group('RgbInt8Color -> ARGB int 8', () {
    test('argbInt8', () {
      expect(c.argbInt8, 0xff0a1b2c);
    });

    test('argbInt8Color', () {
      expect(
          c.argbInt8Color,
          ArgbInt8Color(
            channel0: 0xff,
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('argbInt8ListIntBits', () {
      expect(
        c.argbInt8ListIntBits,
        [
          0xff,
          0x0a,
          0x1b,
          0x2c,
        ],
      );
    });

    test('argbInt8StringIntHex', () {
      expect(c.argbInt8StringIntHex, 'ff0a1b2c');
    });
  });

  group('RgbInt8Color -> RGB int 8', () {
    test('rgbInt8', () {
      expect(c.rgbInt8, 0x0a1b2c);
    });

    test('rgbInt8Color', () {
      expect(
          c.rgbInt8Color,
          RgbInt8Color(
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });

    test('rgbInt8ListIntBits', () {
      expect(
        c.rgbInt8ListIntBits,
        [
          0x0a,
          0x1b,
          0x2c,
        ],
      );
    });

    test('rgbInt8StringIntHex', () {
      expect(c.rgbInt8StringIntHex, '0a1b2c');
    });
  });
}
