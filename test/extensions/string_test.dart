import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

void main() {
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
  });
}
