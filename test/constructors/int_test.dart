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
      expect(r.int24, b);
    });
  }, tags: ['current']);
}
