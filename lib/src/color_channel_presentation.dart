part of '../uni_color_model.dart';

/// The presentation of [UniColor] channel.
enum ColorChannelPresentation {
  unspecified(),

  decimal(),
  hex(),
  percentage();

  const ColorChannelPresentation();

  @override
  String toString() => name;
}
