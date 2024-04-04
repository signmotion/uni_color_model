import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('UniColor.operator==', () {
    final a = 0x6fde0a1b2c.acmyk;
    final b = 0x6fde0a1b2c.acmyk;
    final c = 0x5ecdf90a1b.acmyk;

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
