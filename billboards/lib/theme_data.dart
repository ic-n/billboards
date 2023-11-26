import 'dart:ui';

import 'package:flutter/widgets.dart';

class TonalThemeData {
  TonalThemeData({
    Color? primary,
    double? fontSize,
    double? gap,
    double? outlineWidth,
    double? padding,
    double? radius,
    double? radiusRounded,
    Duration? speed,
  }) {
    _primary = primary;
    _fontSize = fontSize;
    _gap = gap;
    _outlineWidth = outlineWidth;
    _padding = padding;
    _radius = radius;
    _radiusRounded = radiusRounded;
    _speed = speed;
  }

  int revison = 0;
  @override
  int get hashCode => revison;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }

  Color? _primary;
  Color get primary => _primary ?? const Color(0xffff0000);
  set primary(Color n) {
    if (_primary == n) return;
    revison++;
    _primary = n;
  }

  Color? _canvas;
  Color get canvas => _canvas ?? const Color(0xff00ff00);
  set canvas(Color n) {
    if (_canvas == n) return;
    revison++;
    _canvas = n;
  }

  double? _fontSize;
  double get fontSize => _fontSize ?? 16;
  set fontSize(double n) {
    if (_fontSize == n) return;
    revison++;
    _fontSize = n;
  }

  double? _gap;
  double get gap => _gap ?? 8;
  set gap(double n) {
    if (_gap == n) return;
    revison++;
    _gap = n;
  }

  double? _outlineWidth;
  double get outlineWidth => _outlineWidth ?? 2;
  set outlineWidth(double n) {
    if (_outlineWidth == n) return;
    revison++;
    _outlineWidth = n;
  }

  double? _padding;
  double get padding => _padding ?? (gap * 2);
  set padding(double n) {
    if (_padding == n) return;
    revison++;
    _padding = n;
  }

  double? _radius;
  double get radius => _radius ?? 8;
  set radius(double n) {
    if (_radius == n) return;
    revison++;
    _radius = n;
  }

  double? _radiusRounded;
  double get radiusRounded => _radiusRounded ?? 9999;
  set radiusRounded(double n) {
    if (_radiusRounded == n) return;
    revison++;
    _radiusRounded = n;
  }

  Duration? _speed;
  Duration get speed => _speed ?? const Duration(milliseconds: 86);
  set speed(Duration n) {
    if (_speed == n) return;
    revison++;
    _speed = n;
  }

  TonalThemeData copy() {
    return TonalThemeData(
      primary: primary,
      fontSize: fontSize,
      gap: gap,
      outlineWidth: outlineWidth,
      padding: padding,
      radius: radius,
      radiusRounded: radiusRounded,
      speed: speed,
    );
  }

  static TonalThemeData lerp(TonalThemeData a, TonalThemeData b, double t) {
    return TonalThemeData(
      primary: Color.lerp(a.primary, b.primary, t),
      fontSize: lerpDouble(a.fontSize, b.fontSize, t),
      gap: lerpDouble(a.gap, b.gap, t),
      outlineWidth: lerpDouble(a.outlineWidth, b.outlineWidth, t),
      padding: lerpDouble(a.padding, b.padding, t),
      radius: lerpDouble(a.radius, b.radius, t),
      radiusRounded: lerpDouble(a.radiusRounded, b.radiusRounded, t),
      speed: b.speed,
    );
  }
}
