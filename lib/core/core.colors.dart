import "package:flutter/material.dart";

Color _rgba(int r,int g, int b,{double a=1}){
  return Color.fromRGBO(r, g, b, a);
}

class AppColor{
  static Color primary = _rgba(66,178,44);
  static Color white = _rgba(255, 255, 255);
  static Color black = Colors.black;
  static Color red = _rgba(255,0,0);
  static Color inactive = _rgba(154,160,166);
  static Color light = _rgba(243,243,243);
  static Color gray = _rgba(217,217,217);
  static Color gray_2 = _rgba(232,232,232);
  static Map<int, Color> grayShade = {
    100:_rgba(243,243,243),
    200:_rgba(232,232,232),
    300:_rgba(217,217,217),
    400:_rgba(154,160,166),
    600:_rgba(154,160,166)
  };

  static Color rgba(int r,int g, int b,{double a=1}){
    return _rgba(r, g, b,a:a);
  }

}
