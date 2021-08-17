
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'dart:math' as math;
class Responsive {
  double _width=0, _height=0, _diagonal=0;
  bool _isTablet = false;

  //gettes
  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  bool get isTablet => _isTablet;

  //funcion que retorna una instancia de la clase responsive
  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context){
   final Size size =  MediaQuery.of(context).size;
   this._width = size.width;
   this._height = size.height;

   // c^2 = a^2 + b^2;
   this._diagonal = math.sqrt(math.pow(this._width, 2)+math.pow(this._height, 2));
   
   // si es mayor que 600, entonces es tablet
   this._isTablet = size.shortestSide >= 600;

  }
  //retorna el valor del ancho con respecto a un porcentaje
  double wp(double percent) => (_width*percent)/100;
  //retorna el valor del largo con respecto a un porcentaje
  double hp(double percent) => (_height*percent)/100;
  //retorna el valor de la diagonal con respecto a un porcentaje
  double dp(double percent) => (_diagonal*percent)/100;
} 