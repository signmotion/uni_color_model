import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
  // no alpha
  const b = '0a1b2c';
  // TODO(sign): const c = '#0a1b2c';
  // TODO(sign): const d = '0a 1b 2c';
  // TODO(sign): const e = ' 0a    1b  2c        ';

  // with alpha
  // TODO(sign): const ab = 'de0a1b2c';
  // TODO(sign): const ac = '#de0a1b2c';
  // TODO(sign): const ad = 'de 0a 1b 2c';
  // TODO(sign): const ae = ' de  0a    1b  2c      ';

  group('No alpha', () {
    test('int8Channel0Color', () {
      expect(b.int8Channel0Color, 0x0a);
    });

    test('int8Channel1Color', () {
      expect(b.int8Channel1Color, 0x1b);
    });

    test('int8Channel2Color', () {
      expect(b.int8Channel2Color, 0x2c);
    });

    test('int8Channel3Color', () {
      expect(b.int8Channel3Color, -1);
    });

    test('int8Channel4Color', () {
      expect(b.int8Channel4Color, -1);
    });

    test('isArgbInt8HexColor', () {
      expect(b.isArgbInt8HexColor, isFalse);
    });

    test('isRgbInt8HexColor', () {
      expect(b.isRgbInt8HexColor, isTrue);
    });

    test('isInt8HexColor', () {
      expect(b.isInt8HexColor, isTrue);
    });
  });

  group('normalizedNameColor', () {
    test('latin, lowercase, no spaces', () {
      expect('green'.normalizedNameColor, 'green');
      expect('green'.normalizedNameColor, 'green');
    });

    test('latin, lowercase, spaces', () {
      expect('forrest green'.normalizedNameColor, 'forrestgreen');
      expect('  forrest   green '.normalizedNameColor, 'forrestgreen');
    });

    test('latin, anycase, spaces', () {
      expect('Forrest Green'.normalizedNameColor, 'forrestgreen');
    });

    test('latin, anycase, spaces, special symbols', () {
      expect('Forrest + Green'.normalizedNameColor, 'forrestgreen');
      expect('Forrest _ Green'.normalizedNameColor, 'forrestgreen');
      expect('Forrest_Green'.normalizedNameColor, 'forrestgreen');
      expect('F*rrest | Green'.normalizedNameColor, 'frrestgreen');
    });

    test('hex digits, anycase, spaces, special symbols', () {
      expect('#de0A1b2c'.normalizedNameColor, 'de0a1b2c');
      expect(' #de 0A 1b 2c  '.normalizedNameColor, 'de0a1b2c');
    });

    test('empty', () {
      expect(''.normalizedNameColor, '');
      expect('  '.normalizedNameColor, '');
    });
  }, tags: ['current']);
}
