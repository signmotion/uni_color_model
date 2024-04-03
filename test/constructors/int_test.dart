import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

/// Constructing from [int] value.
void main() {
  // TODO(sign): const a = 0xde0a1b2c;
  const b = 0x0a1b2c;
  // bin    000010100001101100101100
  // bin 12 000010100001 101100101100

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

    test('b.rgbWith, equal channels 8', () {
      final r = b.rgbWith(channelsDepth: 8);
      expect(r.channels, [0x00, 0x00, 0x0a, 0x1b, 0x2c]);
    });

    test('b.rgbWith, equal channels 12', () {
      final r = b.rgbWith(channelsDepth: 12);
      expect(r.channels, [
        0x00,
        0x00,
        0x00,
        int.tryParse('000010100001', radix: 2),
        int.tryParse('101100101100', radix: 2),
      ]);
    });
  });
}
