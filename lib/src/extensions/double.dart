part of '../../uni_color_model.dart';

extension ColorModelDoubleExt on double {
  static const defaultZeroValue = 0.0001;

  bool get isNearZero => isNear(0.0);

  bool get isNearHalf => isNear(0.5);

  bool get isNearOne => isNear(1.0);

  bool isNear(double v, [double zeroValue = defaultZeroValue]) =>
      (this - v).abs() < zeroValue;

  double roundToDecimals(int decimals) {
    if (decimals < 0) {
      return this;
    }

    if (decimals == 0) {
      return roundToDouble();
    }

    final p = pow(10, decimals);

    return (this * p).roundToDouble() / p;
  }

  bool equalWithDecimals(double b, {int decimals = -1}) =>
      roundToDecimals(decimals) == b.roundToDecimals(decimals);
}
