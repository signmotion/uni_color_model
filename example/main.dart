// ignore_for_file: avoid_print

import 'package:uni_color_model/uni_color_model.dart';

void main() {
  // CMYK with alpha
  {
    final c = 0x6fde0a1b2c.acmyk;
    print(c.int40.hex(10));
    print(c.hasAlpha);
    print('Cyan channel: #${c.c.hex()}');
  }
}
