
import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.pink,
  Colors.teal,
  Colors.green, 
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.indigo
];

class AppTheme{
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }) : 
    assert(selectedColor >= 0, 'Selecter color must be greater than 0'),
    assert(selectedColor <= colorList.length, 'Selecter color must be greater than ${ colorList.length }');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme( centerTitle: false, )
  );

}