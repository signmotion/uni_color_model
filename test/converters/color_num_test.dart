import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('RgbInt8Color', () {
    final c = RgbInt8Color.rgb(0x0a, 0x1b, 0x2c);

    test('rgbInt8Color, copy', () {
      expect(c.rgbInt8Color, c);
    });
  });
}
