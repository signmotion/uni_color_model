import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('intBitsChannelNColor, correct values', () {
    const b = 0x6fde0a1b2c;
    // bin  2 011011111101111000001010000110 11 00 10 11 00
    // bin 10 0110111111 0111100000 1010000110 1100101100

    test('intBitsChannelNColor 2 bits', () {
      expect(b.intBitsChannelNColor(2, 0), int.parse('11', radix: 2));
      expect(b.intBitsChannelNColor(2, 1), int.parse('00', radix: 2));
      expect(b.intBitsChannelNColor(2, 2), int.parse('10', radix: 2));
      expect(b.intBitsChannelNColor(2, 3), int.parse('11', radix: 2));
      expect(b.intBitsChannelNColor(2, 4), int.parse('00', radix: 2));
    });

    test('intBitsChannelNColor 4 bits', () {
      expect(b.intBitsChannelNColor(4, 0).hex(1), 'a');
      expect(b.intBitsChannelNColor(4, 1).hex(1), '1');
      expect(b.intBitsChannelNColor(4, 2).hex(1), 'b');
      expect(b.intBitsChannelNColor(4, 3).hex(1), '2');
      expect(b.intBitsChannelNColor(4, 4).hex(1), 'c');
    });

    test('intBitsChannelNColor 8 bits', () {
      expect(b.intBitsChannelNColor(8, 0).hex(), '6f');
      expect(b.intBitsChannelNColor(8, 1).hex(), 'de');
      expect(b.intBitsChannelNColor(8, 2).hex(), '0a');
      expect(b.intBitsChannelNColor(8, 3).hex(), '1b');
      expect(b.intBitsChannelNColor(8, 4).hex(), '2c');
    });

    test('intBitsChannelNColor 10 bits', () {
      expect(b.intBitsChannelNColor(10, 0), int.parse('0000000000', radix: 2));
      expect(b.intBitsChannelNColor(10, 1), int.parse('0110111111', radix: 2));
      expect(b.intBitsChannelNColor(10, 2), int.parse('0111100000', radix: 2));
      expect(b.intBitsChannelNColor(10, 3), int.parse('1010000110', radix: 2));
      expect(b.intBitsChannelNColor(10, 4), int.parse('1100101100', radix: 2));
    });
  }, tags: ['current']);

  group('fillWithOnesRight, correct values', () {
    test('fillWithOnesRight', () {
      expect(fillWithOnesRight(0), 0x00);
      expect(fillWithOnesRight(1), 0x01);
      expect(fillWithOnesRight(2), 0x03);
      expect(fillWithOnesRight(4), 0x0f);
      expect(fillWithOnesRight(8), 0xff);
      expect(fillWithOnesRight(16), 0xffff);
      expect(fillWithOnesRight(24), 0xffffff);
      expect(fillWithOnesRight(32), 0xffffffff);
    });
  });
}
