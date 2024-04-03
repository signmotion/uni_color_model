import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

/// Constructing from [int] value.
void main() {
  // TODO(sign): const a = 0xde0a1b2c;
  const b = 0x0a1b2c;

  group('Correct, RGB model', () {
    test('b.rgb', () {
      final r = b.rgb;
      expect(r.model, ColorModel.rgb);
      expect(r.channels, [0x00, 0x00, 0x0a, 0x1b, 0x2c]);
    });

    test('b.rgbWith, equal channels 4', () {
      final r = b.rgbWith(channelsDepth: 4);
      expect(r.channels, [0x00, 0x00, 0x0b, 0x02, 0x0c]);
    });

    test('b.rgbWith, equal channels 4', () {
      final r = b.rgbWith(channelsDepth: 4);
      expect(r.channels, [0x00, 0x00, 0x0b, 0x02, 0x0c]);
    });
  });
}
