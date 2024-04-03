import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('UniColor', () {
    final a = RgbInt8Color.rgb(0x15, 0x44, 0x06);
    final b = RgbInt8Color.rgb(0x15, 0x44, 0x06);
    final c = RgbInt8Color.rgb(0xC5, 0xC4, 0xC6);

    test('operator ==, same values', () {
      expect(a == a, isTrue, reason: '$a != $a');
    });

    test('operator ==, equal values', () {
      expect(a == b, isTrue, reason: '$a != $b');
    });

    test('operator ==, different values', () {
      expect(a == c, isFalse, reason: '$a == $c');
    });
  });
}
