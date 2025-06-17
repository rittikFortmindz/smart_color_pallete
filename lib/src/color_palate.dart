import 'package:flutter/material.dart';

class ColorPair {
  final Color base;
  Color target;

  ColorPair({required this.base, this.target = Colors.black});
}

class ColorPalette {
  final ColorPair primary;
  final ColorPair base;
  ColorPair? text;
  ColorPair? icon;
  ColorPair? border;
  ColorPair? button;

  static const int _shadeCount = 10;

  late final List<Color> _primaryShades;
  late final List<Color> _baseShades;
  late final List<Color> _textShades;
  late final List<Color> _iconShades;
  late final List<Color> _borderShades;
  late final List<Color> _buttonShades;

  ColorPalette({
    required this.primary,
    required this.base,
    this.text,
    this.icon,
    this.border,
  }) {
    this.text = text ?? ColorPair(base: Colors.black, target: Colors.white);
    this.icon = icon ?? ColorPair(base: Colors.white, target: Colors.black);
    this.border = border ?? ColorPair(base: Colors.grey, target: Colors.black);
    this.button = button ?? ColorPair(base: Colors.blue, target: Colors.white);

    _primaryShades = _generateShades(primary);
    _baseShades = _generateShades(base);
    _textShades = _generateShades(text!);
    _iconShades = _generateShades(icon!);
    _borderShades = _generateShades(border!);
    _buttonShades = _generateShades(button!);
  }

  List<Color> _generateShades(ColorPair pair) {
    return List<Color>.generate(_shadeCount, (i) {
      double t = i / (_shadeCount - 1);
      return Color.lerp(pair.base, pair.target, t)!;
    });
  }

  // Primary Shades
  Color get primaryColorShade1 => _primaryShades[0];
  Color get primaryColorShade2 => _primaryShades[1];
  Color get primaryColorShade3 => _primaryShades[2];
  Color get primaryColorShade4 => _primaryShades[3];
  Color get primaryColorShade5 => _primaryShades[4];
  Color get primaryColorShade6 => _primaryShades[5];
  Color get primaryColorShade7 => _primaryShades[6];
  Color get primaryColorShade8 => _primaryShades[7];
  Color get primaryColorShade9 => _primaryShades[8];
  Color get primaryColorShade10 => _primaryShades[9];

  // Base Shades
  Color get baseColorShade1 => _baseShades[0];
  Color get baseColorShade2 => _baseShades[1];
  Color get baseColorShade3 => _baseShades[2];
  Color get baseColorShade4 => _baseShades[3];
  Color get baseColorShade5 => _baseShades[4];
  Color get baseColorShade6 => _baseShades[5];
  Color get baseColorShade7 => _baseShades[6];
  Color get baseColorShade8 => _baseShades[7];
  Color get baseColorShade9 => _baseShades[8];
  Color get baseColorShade10 => _baseShades[9];

  // Text Shades
  Color get textColorShade1 => _textShades[0];
  Color get textColorShade2 => _textShades[1];
  Color get textColorShade3 => _textShades[2];
  Color get textColorShade4 => _textShades[3];
  Color get textColorShade5 => _textShades[4];
  Color get textColorShade6 => _textShades[5];
  Color get textColorShade7 => _textShades[6];
  Color get textColorShade8 => _textShades[7];
  Color get textColorShade9 => _textShades[8];
  Color get textColorShade10 => _textShades[9];

  // Icon Shades
  Color get iconColorShade1 => _iconShades[0];
  Color get iconColorShade2 => _iconShades[1];
  Color get iconColorShade3 => _iconShades[2];
  Color get iconColorShade4 => _iconShades[3];
  Color get iconColorShade5 => _iconShades[4];
  Color get iconColorShade6 => _iconShades[5];
  Color get iconColorShade7 => _iconShades[6];
  Color get iconColorShade8 => _iconShades[7];
  Color get iconColorShade9 => _iconShades[8];
  Color get iconColorShade10 => _iconShades[9];

  // Border Shades
  Color get borderColorShade1 => _borderShades[0];
  Color get borderColorShade2 => _borderShades[1];
  Color get borderColorShade3 => _borderShades[2];
  Color get borderColorShade4 => _borderShades[3];
  Color get borderColorShade5 => _borderShades[4];
  Color get borderColorShade6 => _borderShades[5];
  Color get borderColorShade7 => _borderShades[6];
  Color get borderColorShade8 => _borderShades[7];
  Color get borderColorShade9 => _borderShades[8];
  Color get borderColorShade10 => _borderShades[9];

  // Button Shades
  Color get buttonColorShades1 => _buttonShades[0];
  Color get buttonColorShades2 => _buttonShades[1];
  Color get buttonColorShades3 => _buttonShades[2];
  Color get buttonColorShades4 => _buttonShades[3];
  Color get buttonColorShades5 => _buttonShades[4];
  Color get buttonColorShades6 => _buttonShades[5];
  Color get buttonColorShades7 => _buttonShades[6];
  Color get buttonColorShades8 => _buttonShades[7];
  Color get buttonColorShades9 => _buttonShades[8];
  Color get buttonColorShades10 => _buttonShades[9];
}
