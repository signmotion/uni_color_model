import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  group('intDepthChannelNColor, correct values', () {
    const b = 0x6fde0a1b2c;
    // bin 0110111111011110000010100001101100101100

    test('intBitsChannelNColor 2 bits', () {
      // bin 2 bits 011011111101111000001010000110 11 00 10 11 00
      expect(b.intDepthChannelNColor(2, 0), int.parse('11', radix: 2));
      expect(b.intDepthChannelNColor(2, 1), int.parse('00', radix: 2));
      expect(b.intDepthChannelNColor(2, 2), int.parse('10', radix: 2));
      expect(b.intDepthChannelNColor(2, 3), int.parse('11', radix: 2));
      expect(b.intDepthChannelNColor(2, 4), int.parse('00', radix: 2));
    });

    test('intBitsChannelNColor 4 bits', () {
      expect(b.intDepthChannelNColor(4, 0).hex(1), 'a');
      expect(b.intDepthChannelNColor(4, 1).hex(1), '1');
      expect(b.intDepthChannelNColor(4, 2).hex(1), 'b');
      expect(b.intDepthChannelNColor(4, 3).hex(1), '2');
      expect(b.intDepthChannelNColor(4, 4).hex(1), 'c');
    });

    test('intBitsChannelNColor 8 bits', () {
      expect(b.intDepthChannelNColor(8, 0).hex(), '6f');
      expect(b.intDepthChannelNColor(8, 1).hex(), 'de');
      expect(b.intDepthChannelNColor(8, 2).hex(), '0a');
      expect(b.intDepthChannelNColor(8, 3).hex(), '1b');
      expect(b.intDepthChannelNColor(8, 4).hex(), '2c');
    });

    test('intBitsChannelNColor 10 bits', () {
      // bin 10 bits 0110111111 0111100000 1010000110 1100101100
      expect(b.intDepthChannelNColor(10, 0), int.parse('0000000000', radix: 2));
      expect(b.intDepthChannelNColor(10, 1), int.parse('0110111111', radix: 2));
      expect(b.intDepthChannelNColor(10, 2), int.parse('0111100000', radix: 2));
      expect(b.intDepthChannelNColor(10, 3), int.parse('1010000110', radix: 2));
      expect(b.intDepthChannelNColor(10, 4), int.parse('1100101100', radix: 2));
    });
  });

  group('intDepthChannelNColor, correct values', () {
    const b = 0x6fde0a1b2c;

    test('intDepthsChannelNColor 5:6 bits, reverse', () {
      // bin 01101111110111100000101000011 01100 101100
      const depths = [5, 6];
      expect(
        b.intDepthsChannelNColor(depths, 0),
        int.parse('01100', radix: 2),
      );
      expect(
        b.intDepthsChannelNColor(depths, 1),
        int.parse('101100', radix: 2),
      );
    });

    test('intDepthsChannelNColor 3:4:5:6 bits, reverse', () {
      // bin 0110111111011110000010 100 0011 01100 101100
      const depths = [3, 4, 5, 6];
      expect(
        b.intDepthsChannelNColor(depths, 0),
        int.parse('100', radix: 2),
      );
      expect(
        b.intDepthsChannelNColor(depths, 1),
        int.parse('0011', radix: 2),
      );
      expect(
        b.intDepthsChannelNColor(depths, 2),
        int.parse('01100', radix: 2),
      );
      expect(
        b.intDepthsChannelNColor(depths, 3),
        int.parse('101100', radix: 2),
      );
    });

    test('intDepthsChannelNColor 5:6 bits, no reverse', () {
      // bin 01101111110111100000101000011 011001 01100
      const depths = [5, 6];
      expect(
        b.intDepthsChannelNColor(depths, 0, reverse: false),
        int.parse('10010', radix: 2),
      );
      expect(
        b.intDepthsChannelNColor(depths, 1, reverse: false),
        int.parse('1100', radix: 2),
      );
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
