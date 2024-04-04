import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  final c = 0x6fde0a1b2c.acmyk;

  group('Correct, ACMYK model to int structure', () {
    test('int40, depths for channels by default: equal 8 bits', () {
      final r = c.int40;
      expect(r, 0x6fde0a1b2c);
    });
  });
}
