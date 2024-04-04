import 'package:uni_color_model/uni_color_model.dart';
import 'package:test/test.dart';

/// Constructing from [int] value.
void main() {
  final c = 0x6fde0a1b2c.acmyk;

  group('to int, equal channel depths', () {
    test('intWith, depth = 8', () {
      // TODO final r = c.intWith(depth = 8);
      // TODO expect(r, 0x6fde0a1b2c);
    });
  });
}
