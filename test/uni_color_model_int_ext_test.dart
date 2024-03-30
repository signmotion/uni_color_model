import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('ColorModelIntExt', () {
    const c = 0xffa1b2c3;

    test('color channels', () {
      expect(c.int8Channel0Color, 0xff);
      expect(c.int8Channel1Color, 0xa1);
      expect(c.int8Channel2Color, 0xb2);
      expect(c.int8Channel3Color, 0xc3);
    });

    test('argbToRgbInt8Color', () {
      expect(c.argbInt8ToRgbInt8Color, 0xa1b2c3);
    });

    test('argbInt8ToArgbListInt8Color', () {
      expect(c.argbInt8ToArgbListInt8Color, [0xff, 0xa1, 0xb2, 0xc3]);
    });

    test('argbInt8ToRgbListInt8Color', () {
      expect(c.argbInt8ToRgbListInt8Color, [0xa1, 0xb2, 0xc3]);
    });
  });
}
