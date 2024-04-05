import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('Correct, 8-bits ACMYK model to int structure', () {
    final c = 0x6fde0a1b2c.acmyk;

    test('int40, depths for channels by default: equal 8 bits', () {
      final r = c.int40;
      expect(r.hex(), '6fde0a1b2c');
    });

    test('intWith, depths for channels: equal 4 bits', () {
      final r = c.intWith(depth: 4);
      expect(r.hex(), '8f123');
    });

    test('intWith, depths for channel: equal 8 bits', () {
      final r = c.intWith(depth: 8);
      expect(r.hex(), '6fde0a1b2c');
    });

    test('intWith, depths for channels: equal 12 bits', () {
      // bin 000000000110 111111011110 000010100001 101100101100
      final r = c.intWith(depth: 12);
      expect(r.hex(), '800fff0b81f232c');
    });
  });
}
