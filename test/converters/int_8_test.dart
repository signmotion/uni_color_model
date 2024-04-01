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

    test('rgbInt8Color', () {
      expect(
          c.rgbInt8Color,
          const RgbInt8Color(
            channel1: 0x0a,
            channel2: 0x1b,
            channel3: 0x2c,
          ));
    });
  });
}
