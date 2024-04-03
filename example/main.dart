// ignore_for_file: avoid_print

import 'package:uni_color_model/uni_color_model.dart';

void main() {
  final c = 0x1805db.rgb;
  print(c.int24.hex(6));
  print(c.hasAlpha);
  print('Red channel: #${c.r.hex()}');
}
